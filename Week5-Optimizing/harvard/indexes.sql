CREATE INDEX "search_enrollment_by_course_id" ON "enrollments"("course_id");
CREATE INDEX "search_course_by_semester_id" ON "courses"("semester");
CREATE INDEX "search_course_by_title_id" ON "courses"("title");
CREATE INDEX "search_course_by_deparment_id" ON "courses"("department");
