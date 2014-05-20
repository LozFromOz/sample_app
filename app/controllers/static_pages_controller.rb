class StaticPagesController < ApplicationController

  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end

  def branding
  end

  def advertising
  end

  def traditional_advertising
  end

  def digital_advertising
  end

  def media_release
  end

  def event_management
  end

  def blogging
  end

  def digital_advertising
  end

  def seo
  end

  def email_marketing
  end

  def social_media_marketing
  end

  def online_advertising
  end

  def market_research
  end

  def strategic_analysis
  end

  def marketing_objectives
  end

  def marketing_strategies
  end

  def marketing_program_plan
  end

  def key_metrics
  end

  def google_analytics
  end
  

end
