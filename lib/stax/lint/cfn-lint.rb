module Stax
  class Stack
    desc 'lint', 'run cfn-lint on template'
    def lint
      require 'open3'
      debug("cfn-lint #{stack_name}")
      Open3.popen3('cfn-lint -') do |stdin, stdout|
        stdin.write(cfn_template)
        stdin.close
        puts stdout.read
      end
    rescue Errno::ENOENT => e
      fail_task(e.message)
    end
  end
end

module Stax
  class Cli
    desc 'lint', 'run cfn-lint on all templates'
    def lint
      stack_objects.each(&:lint)
    end
  end
end
