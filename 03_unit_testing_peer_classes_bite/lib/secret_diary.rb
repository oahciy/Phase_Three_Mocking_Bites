class SecretDiary
  def initialize(diary) # diary is an instance of Diary
    @lock = true
    @diary = diary
  end

  def read
    # Raises the error "Go away!" if the diary is locked
    fail "Go away!" if @lock
    # Returns the diary's contents if the diary is unlocked
    return @diary.read unless @lock
    # The diary starts off locked
  end

  def lock
    # Locks the diary
    # Returns nothing
    @lock = true
  end

  def unlock
    # Unlocks the diary
    # Returns nothing
    @lock = false
  end
end