class ExamplesController < ApplicationController

  def show
    @h1_text = 'John Dugan'
    respond_to do |format|
      format.docx { headers["Content-Disposition"] = "attachment; filename=\"caracal.docx\"" }
    end
  end

end
