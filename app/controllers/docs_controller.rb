class DocsController < ApplicationController

  def index
    @doc_all = Doc.all #0 , 1 ...n
      end
    
      def new
        @doc=Doc.new
      end

      def create
        @doc = Doc.new(doc_params)
        if @doc.save
        redirect_to docs_index_path
        else
        render :new
        end
      end
    
      private
    def doc_params
    params.require(:doc).permit(:name, :synopsis, :director)
    end
end