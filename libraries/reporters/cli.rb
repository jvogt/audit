# encoding: utf-8
require 'json'

module Reporter
  #
  # Used to write report to file on disk
  #
  class Cli
    def initialize

    end

    def reporter
      return 'cli', {'stdout' => true}
    end

    def send_report(report)
      require 'inspec'

      # example of loading run_data from JSON file
      # report = JSON.parse(File.read(path + '/../mock/reporters/run_data.json'), symbolize_names: true)

      ::Inspec::Reporters.render(reporter, report)
    end
  end
end
