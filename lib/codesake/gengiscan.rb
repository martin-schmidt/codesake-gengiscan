require "codesake/gengiscan/version"
require 'codesake/gengiscan/phpbb'
require 'codesake/gengiscan/general'

module Codesake
  module Core
    class Target

      def fingerprint
        get_page unless has_page?

        phpbb = Codesake::Gengiscan::Phpbb.new({:cookies=>@cookies, :page=>@page, :url=>@url, :agent=>@agent})
        phpbb.detect
        general = Codesake::Gengiscan::General.new({:page=>@page})
        general.detect
        $logger.log phpbb.phpbb_result
        $logger.log general.general_result

      end

    end
  end
end

