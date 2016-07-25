module TasksHelper
  def check_availability(user, session)
    shifts= Shift.where(id:(Available.where(user_id:user.id).pluck(:shift_id)))

    (is_time_in_shifts(user,session.start,shifts)) and (is_time_in_shifts(user,session.end,shifts))



  end

  def is_time_in_shifts(user,time, shifts)
    res = false
    shifts.each do |shift|

      if time.between?(shift.start,shift.end) and not (Task.where(user_id: user.id,shift_id:shift.id).count > 0)
        res = true
      end
    end
    return res

  end
end
