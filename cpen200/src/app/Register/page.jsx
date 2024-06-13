
const Register = () => {
  return (
    <>
      <meta charSet="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <link
        href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css"
        rel="stylesheet"
      />
      {/* Application Details Start */}
      <div className="w-full bg-gray-500">
        <div className="container mx-auto py-8">
          <div className="w-96 mx-auto bg-white rounded shadow">
            <div className="mx-16 py-4 px-8 text-black text-xl font-bold border-b border-gray-500">
              Student Application
            </div>
            <form name="student_registration" id="student_registration" action="">
              <div className="py-4 px-8">
                <div className="mb-4">
                  <label className="block text-gray-darker text-sm font-bold mb-2">
                    Student ID:
                  </label>
                  <input
                    className="border rounded w-full py-2 px-3 text-gray-darker"
                    type="text"
                    name="student_id"
                    id="student_id"
                    defaultValue=""
                    placeholder="Enter Your ID"
                  />
                </div>
                <div className="mb-4">
                  <label className="block text-gray-darker text-sm font-bold mb-2">
                    Student Name
                  </label>
                  <input
                    className="border rounded w-full py-2 px-3 text-gray-darker"
                    type="text"
                    name="student_name"
                    id="student_name"
                    defaultValue=""
                    placeholder="Enter Your Name"
                  />
                </div>
                <div className="mb-4">
                  <label className="block text-gray-darker text-sm font-bold mb-2">
                    Course Name:
                  </label>
                  <input
                    className="border rounded w-full py-2 px-3 text-gray-darker"
                    type="text"
                    name="course_name"
                    id="course_name"
                    defaultValue=""
                    placeholder="Enter Your Course Name"
                  />
                  <p id="error_creater_id"></p>
                </div>
                <div className="mb-4">
                  <label className="block text-gray-darker text-sm font-bold mb-2">
                    Admission Date:
                  </label>
                  <input
                    className="border rounded w-full py-2 px-3 text-gray-darker"
                    type="datetime-local"
                    name="admission_date"
                    id="admission_date"
                    defaultValue=""
                  />
                  <p id="error_intake_year"></p>
                </div>
                <div className="mb-4">
                  <button className="mb-2 mx-16 rounded-full py-1 px-24 bg-gradient-to-r from-green-400 to-blue-500">
                    Save
                  </button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
      {/* Application Details End */}
      {/* Student Visa End */}
    </>
  );
};

export default Register;
