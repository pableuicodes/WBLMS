<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Employee Leave Form</title>
<style>
  body {
    font-family: "Segoe UI", Roboto, sans-serif;
    background: #d9dcdfff;
    margin: 0;
    padding: 10px;
    color: #333;
  }

  h2, h3 {
    color: #222;
    text-align: center;
    margin: 10px 0;
  }

  /* Layout */
  .layout {
    display: flex;
    gap: 12px;
    align-items: flex-start;
  }

  /* Left panel */
  .form-container {
    flex: 0 0 25%;
    background: #fff;
    padding: 14px 16px;
    border-radius: 10px;
    box-shadow: 0 1px 6px rgba(0, 0, 0, 0.08);
  }

  /* Right panel */
.table-container {
  flex: 1;
  /* background: #fff; */
  /* padding: 10px; */
  border-radius: 10px;
  /* box-shadow: 0 1px 6px rgba(0, 0, 0, 0.08); */
  overflow-x: auto;       /* Allow horizontal scroll only inside the table, not body */
  overflow-y: hidden;
  max-width: 100%;        /* Prevent table-container from exceeding screen width */
  box-sizing: border-box;
}


  form label {
    font-weight: 600;
    font-size: 0.85rem;
    display: block;
    margin-top: 8px;
  }

  input, select {
    width: 95%;
    padding: 6px 8px;
    border-radius: 6px;
    border: 1px solid #ccc;
    margin-top: 4px;
    font-size: 0.85rem;
  }

  .date-group {
    display: flex;
    gap: 6px;
  }

  .inline-options, .radio-group, .toggle-group {
    display: flex;
    align-items: center;
    gap: 10px;
    margin-top: 6px;
    flex-wrap: wrap;
  }

  input[type="checkbox"], input[type="radio"] {
    width: auto;
    margin-right: 4px;
  }

  .btn-add, .btn-update, .btn-save {
    width: 100%;
    color: white;
    padding: 9px;
    margin-top: 14px;
    border: none;
    border-radius: 6px;
    font-weight: 600;
    cursor: pointer;
    transition: all 0.25s ease;
  }

  .btn-add { background: #007bff; }
  .btn-update { background: #28a745; display: none; }
  .btn-add:hover { background: #005dc5; }
  .btn-update:hover { background: #1f7e32; }

  /* ✅ Updated Save button */
  .btn-save {
    background: #0069d9;
    display: block;
    width: 200px;
    margin: 14px auto 0;
    font-size: 0.9rem;
  }
  .btn-save:hover {
    background: #0053b3;
    box-shadow: 0 2px 6px rgba(0,0,0,0.15);
  }

  /* Compact table */
table {
  width: 100%;
  max-width: 100%;        /* Prevent overflow beyond container */
  border-collapse: collapse;
  font-size: 0.85rem;
  background: #fff;
  border-radius: 8px;
  overflow: hidden;
  table-layout: auto;     /* Let table adjust naturally */
}


  th, td {
    padding: 6px 4px;
    text-align: center;
    border-bottom: 1px solid #eee;
    word-wrap: break-word;
  }

  th {
    background: #007bff;
    color: white;
    font-weight: 600;
  }

  tr:hover {
    background: #f5f7fa;
  }

  .btn-edit, .btn-delete {
    border: none;
    border-radius: 5px;
    padding: 3px 8px;
    font-size: 0.8rem;
    cursor: pointer;
    color: #fff;
  }

  .btn-edit { background: #28a745; }
  .btn-edit:hover { background: #1f7e32; }
  .btn-delete { background: #dc3545; }
  .btn-delete:hover { background: #b22a35; }

  /* Modal */
  .modal {
    display: none;
    position: fixed;
    z-index: 1000;
    left: 0; top: 0;
    width: 100%; height: 100%;
    background: rgba(0,0,0,0.5);
    justify-content: center; align-items: center;
  }

  .modal-content {
    background: #fff;
    padding: 16px 22px;
    border-radius: 8px;
    text-align: center;
    max-width: 320px;
    width: 90%;
  }

  .modal-buttons {
    display: flex;
    justify-content: center;
    gap: 10px;
    margin-top: 16px;
  }

  .btn-confirm, .btn-cancel {
    padding: 7px 12px;
    border: none;
    border-radius: 6px;
    font-weight: 600;
    cursor: pointer;
    font-size: 0.85rem;
  }

  .btn-confirm { background: #dc3545; color: #fff; }
  .btn-cancel { background: #6c757d; color: #fff; }

  /* PVP section */
  .pvp-section {
    display: none;
    margin-top: 8px;
    padding: 6px;
    background: #f8f9fa;
    border-radius: 6px;
  }

  /* ✅ Toast Notification Style */
#toast {
  position: fixed;
  top: 20px;
  right: 20px;
  background-color: #28a745; /* success green */
  color: white;
  padding: 10px 16px;
  border-radius: 6px;
  box-shadow: 0 4px 12px rgba(0,0,0,0.15);
  font-size: 14px;
  font-weight: 500;
  opacity: 0;
  pointer-events: none;
  transition: opacity 0.4s ease, transform 0.4s ease;
  transform: translateY(-10px);
  z-index: 9999;
}

#toast.show {
  opacity: 1;
  pointer-events: auto;
  transform: translateY(0);
}

</style>

</head>
<body>

<h2 style ='color: darkblue; ';>Web-Based Leave Management System</h2>
<h6 style='text-align: center; margin-top: 0px; padding: 0;';>Sub-Module for HRIS alpha version 1.0.0 - by Paul Justine Posas</h6>

<div class="layout">
  <!-- TOAST NOTIFICATION -->
   <div id="toast"></div>
  <!-- Left Form Panel (25%) -->
  <div class="form-container">
    <form id="leaveForm">
      <div style="display:flex; gap: 10px;align-items:center; margin-bottom:10px;">
        <div>
                <label>Search:</label></div>
                <div>
  <input type="text" id="searchBox" placeholder="Search employee..." 
  style="width: 200px; font-size: 0.90rem; padding: 4px;">
       </div>
      </div>

<div id="searchResults" style="background:#f9f9f9; 
border:1px solid #ddd; padding:10px; border-radius:6px; max-height:200px; overflow-y:auto; display:none;"></div>

      <label>Employee Number:</label>
<div style="display: flex; gap: 6px; align-items: center;">
  <input type="text" id="empNumber" readonly required style="flex: 1;">
  <button type="button" id="clearEmpBtn" 
    style="
      background: #dc3545; 
      color: white; 
      border: none; 
      border-radius: 6px; 
      padding: 5px 8px; 
      font-size: 0.90rem; 
      font-weight: 600;
      cursor: pointer;
      transition: background 0.25s;
    ">
    Clear
  </button>
</div>


      <label>Type of Leave:</label>
      <select id="leaveType" required>
        <option value="">-- Select Leave Type --</option>
        <option>Sick Leave</option>
        <option>Vacation Leave</option>
        <option>Maternity Leave</option>
        <option>Paternity Leave</option>
        <option>Special Privilege Leave</option>
        <option>Forced Leave</option>
        <option>Study Leave</option><
        option>Solo Parent Leave</option>
        <option>Rehabilitation Leave</option>
        <option>Special Leave Benefits for Women</option>
        <option>Terminal Leave</option>
        <option>Adoption Leave</option>
        <option>Calamity Leave</option>
        <option>CTO/COC</option>
      </select>

      <label>Inclusive Period:</label>
      <div class="date-group">
        <input type="date" id="fromDate" required>
        <input type="date" id="toDate" required>
      </div>

      <div class="inline-options">
        <label><input type="checkbox" id="sameDay"> Same Day Leave</label>
        <label><input type="checkbox" id="halfDay" disabled> Half Day (0.5)</label>
      </div>

      <div class="radio-group">
        <label><input type="radio" name="payType" value="WITH PAY" checked> With Pay</label>
        <label><input type="radio" name="payType" value="WITHOUT PAY"> Without Pay</label>
      </div>

      <div class="toggle-group">
        <label><input type="checkbox" id="addEndDate"> Add End Date (+1 day)</label>
      </div>

      <div class="toggle-group">
        <label><input type="checkbox" id="withPVP"> With PVP</label>
      </div>

      <div class="pvp-section" id="pvpSection">
        <label>PVP Period:</label>
        <div class="date-group">
          <input type="date" id="pvpFrom">
          <input type="date" id="pvpTo">
        </div>
        <label>PVP Days:</label>
        <input type="text" id="pvpDays" readonly>
      </div>

      <label>Total Number of Working Days:</label>
      <input type="text" id="numDays" readonly>

      <button type="button" class="btn-add" id="addBtn" onclick="addLeave()">Add Leave Record</button>
      <button type="button" class="btn-update" id="updateBtn" onclick="updateLeave()">Update Record</button>
    </form>
  </div>

  <!-- Right Table Panel (75%) -->
  <div class="table-container">
    
    <!-- <h3>Leave Records</h3> -->
    <table id="leaveTable">
      <thead>
        <tr>
          <th>Employee No.</th>
          <th>Type of Leave</th>
          <th>Inclusive Period</th>
          <th>With/Without Pay</th>
          <th>No. of Days</th>
          <th>PVP Days</th>
          <th>Remarks</th>
          <th>Action</th>
        </tr>
      </thead>
      <tbody></tbody>
    </table>

    <button class="btn-save" onclick="saveToDatabase()">Save to Database</button>
  </div>
</div>

<!-- Delete Confirmation Modal -->
<div id="deleteModal" class="modal">
  <div class="modal-content">
    <p>Are you sure you want to delete this record?</p>
    <div class="modal-buttons">
      <button class="btn-confirm" id="confirmDelete">Yes, Delete</button>
      <button class="btn-cancel" id="cancelDelete">Cancel</button>
    </div>
  </div>
</div>
<script>

  // CLEAR EMPLOYEE NUMBER
document.getElementById("clearEmpBtn").addEventListener("click", function() {
  document.getElementById("empNumber").value = "";
  document.getElementById("searchBox").value = "";
  document.getElementById("searchResults").style.display = "none";
});

//function getPhilippineHolidays
function getPhilippineHolidays(){return [
"2025-01-01",
"2025-04-09",
"2025-04-17",
"2025-04-18",
"2025-04-19",
"2025-04-20",
"2025-05-01",
"2025-05-12",
"2025-06-12",
"2025-08-21",
"2025-10-31",
"2025-11-01",
"2025-11-02",
"2025-11-30",
"2025-12-08",
"2025-12-24",
"2025-12-25",
"2025-12-30",
"2025-12-31"];}
function formatReadableDate(d){return new Date(d).toLocaleDateString('en-US',{year:'numeric',month:'short',day:'2-digit'});}

function calculateDays(){
  const f=document.getElementById("fromDate").value,
        t=document.getElementById("toDate").value,
        same=document.getElementById("sameDay").checked,
        half=document.getElementById("halfDay").checked,
        pay=document.querySelector("input[name='payType']:checked").value,
        add=document.getElementById("addEndDate").checked,
        holidays=getPhilippineHolidays();
  if(!f||!t)return;
  let s=new Date(f),e=new Date(t),d=0;
  if(same){d=half?0.5:1;}
  else{
    while(s<=e){
      const iso=s.toISOString().split('T')[0];
      const isWk=s.getDay()==0||s.getDay()==6;
      if(pay==="WITH PAY"){if(!holidays.includes(iso)&&!isWk)d++;}
      else d++;
      s.setDate(s.getDate()+1);
    }
  }
  if(add)d+=1;
  const withPVP=document.getElementById("withPVP").checked;
  let pvpDays=0;
  if(withPVP){
    const pvpFrom=document.getElementById("pvpFrom").value;
    const pvpTo=document.getElementById("pvpTo").value;
    if(pvpFrom && pvpTo){
      const start=new Date(pvpFrom), end=new Date(pvpTo);
      while(start<=end){pvpDays++; start.setDate(start.getDate()+1);}
    }
  }
  document.getElementById("pvpDays").value = withPVP ? pvpDays : "";
document.getElementById("numDays").value = d;

}

["fromDate","toDate","sameDay","halfDay","addEndDate","pvpFrom","pvpTo"].forEach(id=>{
  document.getElementById(id).addEventListener("change",calculateDays);
});
document.querySelectorAll("input[name='payType']").forEach(el=>el.addEventListener("change",calculateDays));
document.getElementById("sameDay").addEventListener("change",function(){
  const h=document.getElementById("halfDay"),to=document.getElementById("toDate");
  if(this.checked){h.disabled=false;to.disabled=true;document.getElementById("toDate").value=document.getElementById("fromDate").value;}
  else{h.disabled=true;h.checked=false;to.disabled=false;}
  calculateDays();
});
document.getElementById("withPVP").addEventListener("change",function(){
  document.getElementById("pvpSection").style.display=this.checked?"block":"none";
  calculateDays();
});

let editRow = null, deleteTarget = null;

function addLeave(){
  const emp=document.getElementById("empNumber").value.trim(),
        type=document.getElementById("leaveType").value,
        f=document.getElementById("fromDate").value,
        t=document.getElementById("toDate").value,
        pay=document.querySelector("input[name='payType']:checked").value,
        num=document.getElementById("numDays").value,
        pvp=document.getElementById("pvpDays").value || 0,
        pvpFrom=document.getElementById("pvpFrom").value,
        pvpTo=document.getElementById("pvpTo").value;
  if(!emp||!type||!f||!t||!num){alert("Please fill all required fields.");return;}
  const period=(f===t)?formatReadableDate(f):`${formatReadableDate(f)} - ${formatReadableDate(t)}`;
  const remarks = pvp>0 ? `with ${pvp} PVP days earned (${formatReadableDate(pvpFrom)} - ${formatReadableDate(pvpTo)})` : "";
  const tbl=document.querySelector("#leaveTable tbody");
  const row=document.createElement("tr");
  row.dataset.from=f; row.dataset.to=t;
  row.dataset.pvpfrom=pvpFrom; row.dataset.pvpto=pvpTo;
  row.innerHTML=`
    <td>${emp}</td>
    <td>${type}</td>
    <td>${period}</td>
    <td>${pay}</td>
    <td>${num}</td>
    <td>${pvp}</td>
    <td>${remarks}</td>
    <td>
      <button class="btn-edit" onclick="editLeave(this)">Edit</button>
      <button class="btn-delete" onclick="openDeleteModal(this)">Delete</button>
    </td>`;
  tbl.appendChild(row);
  document.getElementById("leaveForm").reset();
    document.getElementById("toDate").disabled = false;
  document.getElementById("numDays").value="";
  document.getElementById("pvpDays").value="";
  document.getElementById("pvpSection").style.display="none";
}

function editLeave(btn){
  editRow = btn.closest("tr");
  const cells=editRow.cells;
  document.getElementById("empNumber").value=cells[0].innerText;
  document.getElementById("leaveType").value=cells[1].innerText;
  document.getElementById("fromDate").value=editRow.dataset.from;
  document.getElementById("toDate").value=editRow.dataset.to;
  document.querySelector(`input[name='payType'][value='${cells[3].innerText}']`).checked=true;
  document.getElementById("numDays").value=cells[4].innerText;
  document.getElementById("pvpDays").value=cells[5].innerText;
  if(cells[5].innerText>0){
    document.getElementById("withPVP").checked=true;
    document.getElementById("pvpSection").style.display="block";
    document.getElementById("pvpFrom").value=editRow.dataset.pvpfrom;
    document.getElementById("pvpTo").value=editRow.dataset.pvpto;
  } else {
    document.getElementById("withPVP").checked=false;
    document.getElementById("pvpSection").style.display="none";
  }
  document.getElementById("addBtn").style.display="none";
  document.getElementById("updateBtn").style.display="block";
}

function updateLeave(){
  if(!editRow)return;
  const emp=document.getElementById("empNumber").value,
        type=document.getElementById("leaveType").value,
        f=document.getElementById("fromDate").value,
        t=document.getElementById("toDate").value,
        pay=document.querySelector("input[name='payType']:checked").value,
        num=document.getElementById("numDays").value,
        pvp=document.getElementById("pvpDays").value || 0,
        pvpFrom=document.getElementById("pvpFrom").value,
        pvpTo=document.getElementById("pvpTo").value;
  const period=(f===t)?formatReadableDate(f):`${formatReadableDate(f)} - ${formatReadableDate(t)}`;
  const remarks=pvp>0?`with ${pvp} PVP days earned (${formatReadableDate(pvpFrom)} - ${formatReadableDate(pvpTo)})`:"";
  editRow.dataset.from=f; editRow.dataset.to=t;
  editRow.dataset.pvpfrom=pvpFrom; editRow.dataset.pvpto=pvpTo;
  editRow.innerHTML=`
    <td>${emp}</td>
    <td>${type}</td>
    <td>${period}</td>
    <td>${pay}</td>
    <td>${num}</td>
    <td>${pvp}</td>
    <td>${remarks}</td>
    <td>
      <button class="btn-edit" onclick="editLeave(this)">Edit</button>
      <button class="btn-delete" onclick="openDeleteModal(this)">Delete</button>
    </td>`;
  document.getElementById("leaveForm").reset();
  document.getElementById("addBtn").style.display="block";
  document.getElementById("updateBtn").style.display="none";
  document.getElementById("pvpSection").style.display="none";
  editRow=null;
}

function openDeleteModal(btn){
  deleteTarget = btn.closest("tr");
  document.getElementById("deleteModal").style.display="flex";
}
document.getElementById("cancelDelete").onclick=()=>{deleteTarget=null;document.getElementById("deleteModal").style.display="none";}
document.getElementById("confirmDelete").onclick=()=>{
  if(deleteTarget){deleteTarget.remove();deleteTarget=null;}
  document.getElementById("deleteModal").style.display="none";
};


// Save to database function
function saveToDatabase() {
  const rows = document.querySelectorAll("#leaveTable tbody tr");
  if (rows.length === 0) {
    showToast("⚠️ No records to save.", "warning");
    return;
  }

  const data = [...rows].map(r => ({
    empNum: r.cells[0].innerText,
    lc_type: r.cells[1].innerText,
    lc_dateperiodStart: r.dataset.from,
    lc_dateperiodEnd: r.dataset.to,
    lc_absenceStat: r.cells[3].innerText,
    lc_noOfDays: r.cells[4].innerText,
    lc_pvpDays: r.cells[5].innerText,
    lc_remarks: r.cells[6].innerText
  }));

  fetch("save_leave.php", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(data)
  })
  .then(res => res.text())
  .then(res => {
    showToast("✅ Data saved successfully!");

    // ✅ Reset all fields
    document.getElementById("leaveForm").reset();
    document.getElementById("numDays").value = "";
    document.getElementById("pvpDays").value = "";
    document.getElementById("empNumber").value = "";
    document.getElementById("searchBox").value = "";
    document.getElementById("searchResults").style.display = "none";
    document.getElementById("pvpSection").style.display = "none";
    document.getElementById("addBtn").style.display = "block";
    document.getElementById("updateBtn").style.display = "none";

    // ✅ Re-enable "TO" date field
    document.getElementById("toDate").disabled = false;

    // ✅ Uncheck Same Day + Half Day
    document.getElementById("sameDay").checked = false;
    document.getElementById("halfDay").checked = false;
    document.getElementById("halfDay").disabled = true;

    // ✅ Clear the table
    document.querySelector("#leaveTable tbody").innerHTML = "";
  })
  .catch(err => {
    showToast("❌ Error saving data: " + err, "error");
  });
}



// LIVE SEARCH FUNCTION
const searchBox = document.getElementById("searchBox");
const searchResults = document.getElementById("searchResults");

searchBox.addEventListener("keyup", function(e) {
  const query = this.value.trim();
  if (query.length === 0) {
    searchResults.style.display = "none";
    searchResults.innerHTML = "";
    return;
  }

  fetch("search.php", {
    method: "POST",
    headers: { "Content-Type": "application/x-www-form-urlencoded" },
    body: "query=" + encodeURIComponent(query)
  })
  .then(res => res.text())
  .then(data => {
    searchResults.style.display = "block";
    searchResults.innerHTML = data;
  })
  .catch(err => console.error("Search error:", err));
});

// SELECT RESULT → fills Employee Number automatically
function selectEmployee(empNum) {
  document.getElementById("empNumber").value = empNum;
  searchResults.style.display = "none";
  searchBox.value = "";
}

//Show TOAST Notification

function showToast(message, type = "success") {
  const toast = document.getElementById("toast");

  // Set color depending on type
  if (type === "success") toast.style.backgroundColor = "#28a745";
  else if (type === "error") toast.style.backgroundColor = "#dc3545";
  else if (type === "warning") toast.style.backgroundColor = "#ffc107";
  else toast.style.backgroundColor = "#007bff";

  toast.textContent = message;
  toast.classList.add("show");

  // Hide after 3 seconds
  setTimeout(() => {
    toast.classList.remove("show");
  }, 3000);
}

</script>
</body>
</html>
