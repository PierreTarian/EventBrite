class Attendance < ApplicationRecord
    belongs_to :user
    belongs_to :event

    after_create :NewAttendance_send

    def NewAttendance_send
        AttendanceMailer.NewAttendance_email(self).deliver_now
    end
end
