class ArticlesController < ApplicationController
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:show, :index]
  before_action :require_same_user, only: [:edit, :update, :destroy]
=======
>>>>>>> parent of b36fdad... Refactor code using partials and make app production ready
=======
>>>>>>> parent of b36fdad... Refactor code using partials and make app production ready
=======
>>>>>>> parent of b36fdad... Refactor code using partials and make app production ready
=======
>>>>>>> parent of b36fdad... Refactor code using partials and make app production ready
=======
>>>>>>> parent of b36fdad... Refactor code using partials and make app production ready

  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.paginate(page: params[:page], per_page: 5)
  end

  def new

  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    @article.save
    redirect_to @article


=======
=======
>>>>>>> parent of b36fdad... Refactor code using partials and make app production ready
=======
>>>>>>> parent of b36fdad... Refactor code using partials and make app production ready
=======
>>>>>>> parent of b36fdad... Refactor code using partials and make app production ready
=======
>>>>>>> parent of b36fdad... Refactor code using partials and make app production ready
    if @article.save
      flash[:notice] = "Article was created successfully."
      redirect_to @article
    else
      render 'new'
    end
>>>>>>> parent of b36fdad... Refactor code using partials and make app production ready
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :description))
      flash[:notice] = "Article was updated successfully."
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description)
  end

  def require_same_user
    if current_user != @article.user && !current_user.admin?
      flash[:alert] = "You can only edit or delete your own article"
      redirect_to @article
    end
  end

=======
>>>>>>> parent of b36fdad... Refactor code using partials and make app production ready
=======
>>>>>>> parent of b36fdad... Refactor code using partials and make app production ready
=======
>>>>>>> parent of b36fdad... Refactor code using partials and make app production ready
=======
>>>>>>> parent of b36fdad... Refactor code using partials and make app production ready
=======
>>>>>>> parent of b36fdad... Refactor code using partials and make app production ready
end