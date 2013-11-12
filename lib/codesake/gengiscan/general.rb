module Codesake
  module Gengiscan
    class General

      attr_reader :general_result

      def initialize(options={})
        @cookies        = options[:cookies]
        @page           = options[:page]
        @url            = options[:url]
        @general_result = {}
      end
 
      def detect

        @general_result = {:code=>@page.code, :server=>@page.header['server'], :powered=>@page.header['X-Powered-By'], :generator=>get_generator_signature(@page.body)}

      end

      private
      def get_generator_signature(body)
        generator = ""
        doc=Nokogiri::HTML(body)
        doc.xpath("//meta[@name='generator']/@content").each do |value|
          generator = value.value
        end

        generator
      end

    end
  end
end
