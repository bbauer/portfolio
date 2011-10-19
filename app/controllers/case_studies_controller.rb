class CaseStudiesController < InheritedResources::Base
  def index
    @case_studies = CaseStudy.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @case_studies }
    end
  end

  def show
    @case_study = CaseStudy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @case_study }
    end
  end

  def new
    @case_study = CaseStudy.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @case_study }
    end
  end

  def edit
    @case_study = CaseStudy.find(params[:id])
  end

  def create
    @case_study = CaseStudy.new(params[:list])

    respond_to do |format|
      if @case_study.save
        format.html { redirect_to(@case_study, :notice => 'CaseStudy was successfully created.') }
        format.xml  { render :xml => @case_study, :status => :created, :location => @case_study }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @case_study.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @case_study = CaseStudy.find(params[:id])

    respond_to do |format|
      if @case_study.update_attributes(params[:case_study])
        format.html { redirect_to(@case_study, :notice => 'CaseStudy was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @case_study.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @case_study = CaseStudy.find(params[:id])
    @case_study.destroy

    respond_to do |format|
      format.html { redirect_to(lists_url) }
      format.xml  { head :ok }
    end
  end
end
