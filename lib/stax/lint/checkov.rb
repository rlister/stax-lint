module Stax
  class Stack
    desc 'checkov', 'run cfn-checkov on template'
    def checkov
      debug("checkov #{stack_name}")
      file = Tempfile.create(["#{stack_name}-", '.json'])
      file.write(cfn_template)
      file.flush
      Dir.chdir(File.dirname(file.path)) do
        system "checkov --quiet --compact --framework cloudformation -f #{File.basename(file.path)}"
      end
    end
  end
end

module Stax
  class Cli
    desc 'checkov', 'run checkov on all templates'
    def checkov
      stack_objects.each(&:checkov)
    end
  end
end
