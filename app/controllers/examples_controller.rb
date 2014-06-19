class ExamplesController < ApplicationController
  
  def show
    respond_to do |format|
      format.html
      format.docx do
        input = render_to_string(partial: 'sample.html')
        file = Htmltoword::Document.create(input, 'example')
        send_file file.path, disposition: :attachment
      end
    end
  end
  
end