import React, { useEffect, useState } from 'react';
import axios from 'axios';

const CollegeList = () => {
  const [colleges, setColleges] = useState([]);

  useEffect(() => {
    const fetchColleges = async () => {
      try {
        const response = await axios.get('http://localhost:8080/api/colleges');
        setColleges(response.data);
      } catch (error) {
        console.error('Error fetching colleges:', error);
      }
    };
    fetchColleges();
  }, []);

  return (
    <div className="container mt-5">
      <h1 className="text-center mb-4">List of Colleges</h1>
      <div className="table-responsive">
        <table className="table table-bordered table-hover table-striped">
          <thead className="thead-dark">
            <tr>
              <th>College Name</th>
              <th>Accommodation Type</th>
              <th>Accommodation Fee</th>
            </tr>
          </thead>
          <tbody>
            {colleges.map(college => (
              <tr key={college.id}>
                <td>{college.name}</td>
                <td>{college.accommodationType}</td>
                <td>{`₹${parseFloat(college.accommodationFee).toLocaleString()}`}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default CollegeList;