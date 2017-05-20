class Bob
  def hey(remark)
    @remark = remark

    if screaming?
      'Whoa, chill out!'
    elsif question?
      'Sure.'
    elsif empty?
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end

  private

  def screaming?
    @remark == @remark.upcase && @remark != @remark.downcase
  end

  def question?
    @remark[-1] == '?'
  end

  def empty?
    @remark.strip.empty?
  end
end
