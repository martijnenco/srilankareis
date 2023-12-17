# frozen_string_literal: true

TAILWIND_COMPILE_COMMAND = "#{RbConfig.ruby} #{`bundle info tailwindcss --path`.strip}/exe/tailwindcss \
  -i '#{Rails.root.join('app/assets/stylesheets/application.tailwind.css')}' \
  -o '#{Rails.root.join('app/assets/builds/tailwind.css')}' \
  -c '#{Rails.root.join('config/tailwind.config.js')}' --minify".freeze
SIMPLE_FORM_TAILWIND_GEMDIR = `bundle show simple_form_tailwind_css`.freeze

Rake::Task['tailwindcss:build'].clear
Rake::Task['tailwindcss:watch'].clear
namespace :tailwindcss do
  desc 'Build your Tailwind CSS'
  task build: :environment do
    system({ 'SIMPLE_FORM_TAILWIND_GEMDIR' => SIMPLE_FORM_TAILWIND_GEMDIR }, TAILWIND_COMPILE_COMMAND, exception: true)
  end

  desc 'Watch and build your Tailwind CSS on file changes'
  task watch: :environment do
    system({ 'SIMPLE_FORM_TAILWIND_GEMDIR' => SIMPLE_FORM_TAILWIND_GEMDIR }, "#{TAILWIND_COMPILE_COMMAND} -w")
  end
end
