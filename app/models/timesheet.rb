class Timesheet < ApplicationRecord
    belongs_to :user

    def transform_timesheet
        return {
            name: self.user.username, # 'self' is similar to using @timesheet
            date: self.date,
            start_time: self.start_time,
            end_time: self.end_time,
            total_hours: self.total_hours,
            comments: self.comments,
            posted: self.created_at,
            edited: self.updated_at
        }
    end
end
