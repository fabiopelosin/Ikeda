module Xcodeproj
  class Project
    module Object
      class Association

        class HasMany < Association
          def direct_get
            uuids = @owner.send(@reflection.attribute_getter)
            if @block
              # Evaluate the block, which was specified at the class level, in
              # the instance’s context.
              @owner.list_by_class(uuids, @reflection.klass) do |list|
                list.let(:push) do |new_object|
                  @owner.instance_exec(new_object, &@block)
                end
              end
            else
              @owner.list_by_class(uuids, @reflection.klass)
            end
          end

          def inverse_get
            PBXObjectList.new(@reflection.klass, @owner.project) do |list|
              list.let(:uuid_scope) do
                @owner.project.objects.list_by_class(@reflection.klass).select do |object|
                  object.send(@reflection.inverse.attribute_getter) == @owner.uuid
                end.map(&:uuid)
              end
              list.let(:push) do |new_object|
                new_object.send(@reflection.inverse.attribute_setter, @owner.uuid)
              end
            end
          end

          # @todo Currently this does not call the @block, which means that
          #       in theory (like with a group's children) the object stays
          #       asociated with its old group.
          def direct_set(list)
            @owner.send(@reflection.attribute_setter, list.map(&:uuid))
          end

          def inverse_set(list)
            raise NotImplementedError
          end
        end

      end
    end
  end
end

