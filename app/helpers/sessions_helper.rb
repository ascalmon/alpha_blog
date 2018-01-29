module SessionsHelper 
    def page_title
          @page_title = "Daniel"
          @page_title || "Alpha Blog"
     end
  
      def sayhello(name)
        @name = name
        @name || "I have used the default name"
      end
  
end