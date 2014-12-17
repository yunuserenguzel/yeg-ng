require 'fileutils'
module Yeg
  class Ng
    def self.init(app_name)
      if app_name == nil || app_name.length == 0
        return puts "app name is not given ex: 'yeg-ng my_app'"
      end
      if not app_name =~ /^[a-z_][a-zA-Z_0-9]*$/
        return puts "app name should match ruby variable naming convention"
      end
      app_name_camelized = app_name.split('_').collect(&:capitalize).join
      app_name_pretty = app_name.split('_').collect(&:capitalize).join(' ')
      app_name_js = app_name.split('_').collect(&:capitalize).join(' ')
      p = Pathname(__dir__)
      Dir.mkdir(app_name)
      target_folder = File.absolute_path(app_name)
      templates_path = (p.split[0] + 'templates/.').to_path
      FileUtils.cp_r templates_path, target_folder
      Dir.glob(target_folder+'/**/*') do |item|
        next if item == '.' or item == '..'
        if File.file?(item)
          text = File.read(item)
          text = text.gsub('[APPNAME]', app_name_camelized)
          text = text.gsub('[APPNAMEJS]', app_name_js)
          text = text.gsub('{APPNAME}', app_name_pretty)
          File.open(item, "w") {|file| file.puts text }
        end
      end

      %x[cd #{app_name}; npm install]
      %x[cd #{app_name}; bower-installer]

    end
  end
end
