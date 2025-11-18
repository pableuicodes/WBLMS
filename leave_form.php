<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Leave | WBLMS v1.0</title>
<style>
  body {
    font-family: "Segoe UI", Roboto, sans-serif;
    background: #d9dcdfff;
    margin: 0;
    padding: 10px;
    color: #333;
  }

thead th {
  position: sticky;
  top: 0;
  background: #143d69;
  color: white;
  z-index: 5;
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

/* Make right panel a flex column */
.table-container {
  flex: 1;
  display: flex;
  flex-direction: column;
  background: #fff;
  padding: 10px;
  border-radius: 10px;
  box-shadow: 0 1px 6px rgba(0, 0, 0, 0.08);
  max-height: calc(100vh - 140px); /* Prevent overflow beyond screen */
  box-sizing: border-box;
}


/* Scrollable table area */
.table-wrapper {
  flex: 1;
  overflow-y: auto;
  overflow-x: auto; 
  margin-bottom: 10px;
}


  form label {
    font-weight: 600;
    font-size: 0.85rem;
    display: block;
    margin-top: 8px;
  }

  input, select, input[type="text"] {
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
    vertical-align: center;
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

/* Keep Save button pinned */
.btn-save {
  background: #0069d9;
  padding: 10px;
  color: white;
  border-radius: 6px;
  font-weight: 600;
  cursor: pointer;
  width: 100%;
  margin-top: auto; /* Push button to bottom */
}

.btn-save:hover {
  background: #0053b3;
}

/* Table stays inside wrapper */
table {
  width: 100%;
  border-collapse: collapse;
  font-size: 0.85rem;
  background: #fff;
  table-layout: auto;
}

  th, td {
    padding: 6px 8px;
    text-align: center;
    border-bottom: 1px solid #eee;
    word-wrap: break-word;
      white-space: nowrap;
  }

  td:nth-child(7) {
  white-space: normal; /* Remarks column wraps */
}


  th {
    background: #143d69;
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


/* Datepicker clean UI */
.ui-date { position: relative; width: 100%; max-width: 240px; }
.date-display {
  width: 100%;
  padding: 8px 10px;
  border-radius: 8px;
  border: 1px solid #cfd8e3;
  background: #fff;
  font-size: 0.95rem;
  box-shadow: 0 1px 3px rgba(18,35,64,0.03);
}
.date-display:focus { outline: none; border-color: #1373d3; box-shadow: 0 4px 14px rgba(19,115,211,0.12); }

/* Popup calendar */
.calendar-popup {
  position: absolute;
  z-index: 9999;
  width: 300px;
  background: #fff;
  border-radius: 10px;
  box-shadow: 0 10px 30px rgba(20,40,80,0.12);
  padding: 10px;
  font-family: "Segoe UI", Roboto, sans-serif;
  user-select: none;
}
.cal-head { display:flex; align-items:center; justify-content:space-between; gap:8px; padding-bottom:8px; }
.cal-title { font-weight:700; text-align:center; flex:1; color:#143d69; }
.cal-prev, .cal-next, .cal-today, .cal-clear {
  background: transparent; border: none; cursor: pointer; padding:6px 8px; border-radius:6px; font-weight:600;
}
.cal-prev:hover, .cal-next:hover { background:#f1f5fb; }
.cal-body { display:block; }
.cal-weeknames { display:grid; grid-template-columns:repeat(7,1fr); gap:6px; color:#667; font-size:0.85rem; padding-bottom:6px; }
.cal-days { display:grid; grid-template-columns:repeat(7,1fr); gap:6px; }
.cal-day {
  padding:8px 6px;
  text-align:center;
  border-radius:6px;
  cursor:pointer;
  font-weight:600;
}
.cal-day:hover { background:#f1f7ff; }
.cal-day.other { color:#b5bfcf; font-weight:500; }
.cal-day.selected { background:#1373d3; color:white; }
.cal-day.today { border:1px solid #1373d3; border-radius:6px; }

.cal-footer { display:flex; justify-content:space-between; margin-top:8px; gap:6px; }
.cal-today { background:#e9f5ff; color:#1373d3; }
.cal-clear { background:#fff0f0; color:#d23f3f; border:1px solid #ffecec; }

/* Small responsive tweak */
@media (max-width:420px){ .calendar-popup{ width: calc(100vw - 24px); } .ui-date{ max-width: 160px; } }

</style>

</head>
<body>

<h3 style ='color: #143d69; text-align:center; padding: 0;'>Web-Based Leave Management System</h3>
<h6 style='text-align: center; margin-top: 0px; padding: 0;'>Sub-Module for HRIS alpha version 1.0.0 - by Paul Justine Posas</h6>

<div class="layout">
  <!-- TOAST NOTIFICATION -->
   <div id="toast"></div>
  <!-- Left Form Panel (25%) -->
  <div class="form-container">
    <form id="leaveForm">
      <div style="display:flex; gap: 10px;justify-content: center;align-items:center; margin-bottom:10px; ">
        <div>
                <label>Search:</label></div>
                <div>
  <input type="text" id="searchBox" placeholder="Search employee..." 
  style="width: 200px; font-size: 0.90rem; padding: 4px;" autofocus />
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

<!-- ====== HTML: replace your old date fields with this ====== -->
<label>Inclusive Period:</label>
<div class="date-group">
  <div class="ui-date">
    <input type="text" id="fromDateDisplay" class="date-display" placeholder="YYYY-MM-DD" aria-label="From date" />
    <!-- keep original hidden input used elsewhere in your code -->
    <input type="hidden" id="fromDate" />
  </div>

  <div class="ui-date">
    <input type="text" id="toDateDisplay" class="date-display" placeholder="YYYY-MM-DD" aria-label="To date" />
    <input type="hidden" id="toDate" />
  </div>
</div>

<!-- Single reusable datepicker popup -->
<div id="calendarPopup" class="calendar-popup" aria-hidden="true" style="display:none;">
  <div class="cal-head">
    <button type="button" class="cal-prev" title="Previous month">&lt;</button>
    <div class="cal-title" aria-live="polite"></div>
    <button type="button" class="cal-next" title="Next month">&gt;</button>
  </div>
  <div class="cal-body">
    <div class="cal-weeknames"></div>
    <div class="cal-days"></div>
  </div>
  <div class="cal-footer">
    <button type="button" class="cal-today">Today</button>
    <button type="button" class="cal-clear">Clear</button>
  </div>
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

<div class="table-container">

  <div class="table-wrapper">
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
  </div>

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

//handles date input errors
// =============================
// SAFE DATE VALIDATION HANDLER
// =============================
function validateDateInput(inputField) {
  inputField.addEventListener("input", function () {
    let value = this.value;

    // Allow blank
    if (!value) return;

    // Prevent letters or symbols
    if (/[^0-9\-]/.test(value)) {
      showToast("⚠️ Invalid date: only digits allowed.", "warning");
      this.value = "";
      return;
    }

    // Auto-clean if year is longer than 4 digits (example: 20255)
    let parts = value.split("-");
    if (parts.length === 3 && parts[0].length > 4) {
      showToast("⚠️ Invalid year format.", "warning");
      this.value = "";
      return;
    }

    // Extra defensive check to avoid freezing calculateDays()
    let dateObj = new Date(value);
    if (isNaN(dateObj.getTime())) {
      showToast("⚠️ Invalid date format.", "warning");
      this.value = "";
      return;
    }

    // Final check: valid yyyy-mm-dd format via regex
    const validFormat = /^\d{4}-\d{2}-\d{2}$/;
    if (!validFormat.test(value)) {
      showToast("⚠️ Date format must be YYYY-MM-DD.", "warning");
      this.value = "";
      return;
    }
  });
}

// Apply validation to FROM and TO fields
validateDateInput(document.getElementById("fromDate"));
validateDateInput(document.getElementById("toDate"));


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
document.getElementById("sameDay").addEventListener("change", function () {
    const half = document.getElementById("halfDay");
    const fromHidden = document.getElementById("fromDate");
    const toHidden = document.getElementById("toDate");
    const toDisplay = document.getElementById("toDateDisplay");

    if (this.checked) {
        // Enable half-day
        half.disabled = false;

        // Lock TO date = FROM date
        if (fromHidden.value) {
            toHidden.value = fromHidden.value;
            toDisplay.value = fromHidden.value; // sync UI
        }

        // Disable manual TO editing
        document.getElementById("toDateDisplay").disabled = true;
    } else {
        // Return to normal mode
        half.disabled = true;
        half.checked = false;

        document.getElementById("toDateDisplay").disabled = false;
    }

    calculateDays();
});
document.getElementById("withPVP").addEventListener("change",function(){
  document.getElementById("pvpSection").style.display=this.checked?"block":"none";
  calculateDays();

  
});

document.getElementById("fromDate").addEventListener("change", function () {
    if (document.getElementById("sameDay").checked) {
        document.getElementById("toDate").value = this.value;
        document.getElementById("toDateDisplay").value = this.value;
        calculateDays();
    }
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

    document.getElementById("toDateDisplay").disabled = false;
  document.getElementById("numDays").value="";
  document.getElementById("pvpDays").value="";
  document.getElementById("pvpSection").style.display="none";
     document.getElementById("searchBox").focus();
   

}

function editLeave(btn){
  editRow = btn.closest("tr");
  const cells=editRow.cells;

  document.getElementById("empNumber").value = cells[0].innerText;
  document.getElementById("leaveType").value = cells[1].innerText;

  // Hidden inputs
  document.getElementById("fromDate").value = editRow.dataset.from;
  document.getElementById("toDate").value = editRow.dataset.to;

  // Display inputs (FIX)
  document.getElementById("fromDateDisplay").value = editRow.dataset.from;
  document.getElementById("toDateDisplay").value = editRow.dataset.to;

  document.querySelector(`input[name='payType'][value='${cells[3].innerText}']`).checked = true;
  document.getElementById("numDays").value = cells[4].innerText;
  document.getElementById("pvpDays").value = cells[5].innerText;

  if (cells[5].innerText > 0) {
    document.getElementById("withPVP").checked = true;
    document.getElementById("pvpSection").style.display = "block";
    document.getElementById("pvpFrom").value = editRow.dataset.pvpfrom;
    document.getElementById("pvpTo").value = editRow.dataset.pvpto;
  } else {
    document.getElementById("withPVP").checked = false;
    document.getElementById("pvpSection").style.display = "none";
  }

  document.getElementById("addBtn").style.display = "none";
  document.getElementById("updateBtn").style.display = "block";

  // Auto-recalculate
  calculateDays();

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
        // ✅ Autofocus search box after saving
    document.getElementById("searchBox").focus();
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

(function(){
  // Utilities
  function isoYMD(date){ // returns yyyy-mm-dd
    const y = date.getFullYear();
    const m = String(date.getMonth()+1).padStart(2,'0');
    const d = String(date.getDate()).padStart(2,'0');
    return `${y}-${m}-${d}`;
  }
  function readable(dateObj){ // e.g. Jan 01, 2025
    return dateObj.toLocaleDateString('en-US',{year:'numeric',month:'short',day:'2-digit'});
  }
  function parseFlexible(input){
    // Accepts YYYY-MM-DD or MM/DD/YYYY. Returns Date or null
    if(!input) return null;
    input = input.trim();
    // If already ISO
    const iso = /^\d{4}-\d{2}-\d{2}$/;
    if(iso.test(input)){ const d=new Date(input); return isNaN(d.getTime())?null:d; }
    const mmdd = /^(\d{1,2})\/(\d{1,2})\/(\d{4})$/;
    const m = input.match(mmdd);
    if(m){ const mm = Number(m[1]), dd = Number(m[2]), yy = Number(m[3]); const d = new Date(yy, mm-1, dd); return isNaN(d.getTime())?null:d; }
    return null;
  }

  // DOM references
  const popup = document.getElementById('calendarPopup');
  const weekNames = ["Sun","Mon","Tue","Wed","Thu","Fri","Sat"];
  const weekRow = popup.querySelector('.cal-weeknames');
  const daysGrid = popup.querySelector('.cal-days');
  const titleEl = popup.querySelector('.cal-title');
  const prevBtn = popup.querySelector('.cal-prev');
  const nextBtn = popup.querySelector('.cal-next');
  const todayBtn = popup.querySelector('.cal-today');
  const clearBtn = popup.querySelector('.cal-clear');

  // Create week headers
  weekRow.innerHTML = weekNames.map(w => `<div style="text-align:center; font-weight:700; color:#5b6b80;">${w}</div>`).join('');

  // State
  let activeInput = null; // DOM element (display input)
  let viewDate = new Date(); // month being displayed
  let selectedDate = null; // Date object

  // Render calendar for viewDate
  function renderCalendar(){
    daysGrid.innerHTML = '';
    const year = viewDate.getFullYear();
    const month = viewDate.getMonth();
    titleEl.textContent = `${viewDate.toLocaleString('en-US',{month:'long'})} ${year}`;

    // first day of month
    const first = new Date(year, month, 1);
    const startDay = first.getDay(); // 0..6
    // days in month
    const last = new Date(year, month+1, 0);
    const daysInMonth = last.getDate();

    // prev month days to show
    const prevLast = new Date(year, month, 0).getDate();

    // produce 42 cells (6 rows) for consistent grid
    for(let i=0;i<42;i++){
      const cell = document.createElement('div');
      cell.className = 'cal-day';
      let cellDate = null;
      // index in month grid: i - startDay + 1 => day of month for current month
      const dayNum = i - startDay + 1;
      if(dayNum <= 0){
        // previous month
        const day = prevLast + dayNum;
        cell.textContent = day;
        cell.classList.add('other');
        const dt = new Date(year, month-1, day);
        cellDate = dt;
      } else if(dayNum > daysInMonth){
        // next month
        const day = dayNum - daysInMonth;
        cell.textContent = day;
        cell.classList.add('other');
        const dt = new Date(year, month+1, day);
        cellDate = dt;
      } else {
        // current month
        cell.textContent = dayNum;
        const dt = new Date(year, month, dayNum);
        cellDate = dt;
      }

      // mark today
      const today = new Date();
      if(cellDate.getFullYear()===today.getFullYear() && cellDate.getMonth()===today.getMonth() && cellDate.getDate()===today.getDate()){
        cell.classList.add('today');
      }

      // mark selected
      if(selectedDate && cellDate.getFullYear()===selectedDate.getFullYear() && cellDate.getMonth()===selectedDate.getMonth() && cellDate.getDate()===selectedDate.getDate()){
        cell.classList.add('selected');
      }

      cell.tabIndex = 0;
      cell.addEventListener('click', function(e){
        onPickDate(cellDate);
      });
      cell.addEventListener('keydown', function(e){ if(e.key==='Enter'){ onPickDate(cellDate); } });
      daysGrid.appendChild(cell);
    }
  }

  function openPopupFor(inputEl){
    activeInput = inputEl;
    // set viewDate from currently selected or today
    const hidden = document.getElementById(inputEl.dataset.target);
    const curVal = hidden.value;
    selectedDate = parseFlexible(curVal) || null;
    viewDate = selectedDate ? new Date(selectedDate.getFullYear(), selectedDate.getMonth(), 1) : new Date();
    renderCalendar();

    // position popup below input (simple placement relative)
    popup.style.display = 'block';
    popup.style.opacity = 1;
    popup.setAttribute('aria-hidden','false');

    const rect = inputEl.getBoundingClientRect();
    const bodyRect = document.body.getBoundingClientRect();
    const top = rect.bottom + window.scrollY + 8;
    let left = rect.left + window.scrollX;
    // ensure it doesn't overflow right edge
    const popupW = Math.min(300, window.innerWidth - 24);
    if(left + popupW > window.innerWidth) left = window.innerWidth - popupW - 12;
    popup.style.width = popupW + 'px';
    popup.style.left = left + 'px';
    popup.style.top = top + 'px';

    // store active input so we can highlight days
    renderCalendar();
  }

  function closePopup(){
    popup.style.display = 'none';
    popup.setAttribute('aria-hidden','true');
    activeInput = null;
  }

  function onPickDate(dt){
    if(!activeInput) return;
    // set hidden input value (ISO)
    const hidId = activeInput.dataset.target;
    const hidden = document.getElementById(hidId);
    const iso = isoYMD(dt);
    hidden.value = iso;
    // update visible input text (ISO format)
    activeInput.value = iso;
    // fire change so calculateDays listens
    hidden.dispatchEvent(new Event('change',{bubbles:true}));
    // mark and close
    selectedDate = dt;
    renderCalendar();
    // small delay then close (so user sees selection)
    setTimeout(closePopup, 120);
  }

  // hookup prev/next/today/clear
  prevBtn.addEventListener('click', function(){ viewDate.setMonth(viewDate.getMonth()-1); renderCalendar(); });
  nextBtn.addEventListener('click', function(){ viewDate.setMonth(viewDate.getMonth()+1); renderCalendar(); });
  todayBtn.addEventListener('click', function(){
    const t = new Date();
    if(activeInput) onPickDate(t);
    else { viewDate = new Date(); renderCalendar(); }
  });
  clearBtn.addEventListener('click', function(){
    if(!activeInput) return;
    const hid = document.getElementById(activeInput.dataset.target);
    hid.value = '';
    activeInput.value = '';
    hid.dispatchEvent(new Event('change',{bubbles:true}));
    closePopup();
  });

  // Close when clicking outside
  document.addEventListener('click', function(e){
    if(!popup.contains(e.target) && !(activeInput && activeInput.contains(e.target))) {
      // if click is inside any date display, ignore
      if(activeInput && (e.target === activeInput || activeInput.contains(e.target))) return;
      closePopup();
    }
  });

  // Setup the display inputs to open popup and sync
  function setupDisplay(displayId, targetHiddenId){
    const disp = document.getElementById(displayId);
    disp.setAttribute('data-target', targetHiddenId);

    // click opens popup
    disp.addEventListener('click', function(e){ openPopupFor(disp); });

    // keyboard: down arrow or Enter opens
    disp.addEventListener('keydown', function(e){
      if(e.key === 'ArrowDown' || e.key === 'Enter'){ e.preventDefault(); openPopupFor(disp); }
    });

    // validate manual typing when user blur or press Enter
    disp.addEventListener('blur', function(){
      validateAndSetManual(disp);
    });
    disp.addEventListener('keydown', function(e){
      if(e.key==='Enter'){ validateAndSetManual(disp); disp.blur(); }
    });
  }

  function validateAndSetManual(displayEl){
    const raw = displayEl.value.trim();
    const hid = document.getElementById(displayEl.dataset.target);
    if(!raw){ hid.value=''; hid.dispatchEvent(new Event('change',{bubbles:true})); return; }
    // try flexible parse
    const dt = parseFlexible(raw);
    if(!dt){
      // try to sanitize: remove letters and weird chars and attempt parse (defensive)
      if(/[^0-9\/\- ]/.test(raw) || raw.length>20 || /\d{5,}/.test(raw)){
        showToast("⚠️ Invalid date. Use YYYY-MM-DD or MM/DD/YYYY.", "warning");
        displayEl.value = '';
        hid.value = '';
        hid.dispatchEvent(new Event('change',{bubbles:true}));
        return;
      }
      // fallback: attempt Date()
      const fallback = new Date(raw);
      if(isNaN(fallback.getTime())){
        showToast("⚠️ Invalid date format. Use YYYY-MM-DD or MM/DD/YYYY.", "warning");
        displayEl.value = '';
        hid.value = '';
        hid.dispatchEvent(new Event('change',{bubbles:true}));
        return;
      } else {
        hid.value = isoYMD(fallback);
        displayEl.value = hid.value;
        hid.dispatchEvent(new Event('change',{bubbles:true}));
        return;
      }
    } else {
      // validate year length and reasonable range
      const y = dt.getFullYear();
      if(String(y).length !== 4 || y < 1900 || y > 2100){
        showToast("⚠️ Year must be 4 digits between 1900 and 2100.", "warning");
        displayEl.value = '';
        hid.value = '';
        hid.dispatchEvent(new Event('change',{bubbles:true}));
        return;
      }
      hid.value = isoYMD(dt);
      displayEl.value = hid.value;
      hid.dispatchEvent(new Event('change',{bubbles:true}));
    }
  }

  // Initialize two pickers: from & to (IDs chosen to match your existing code)
  setupDisplay('fromDateDisplay','fromDate');
  setupDisplay('toDateDisplay','toDate');

  // Expose helper to programmatically focus the display input
  window.focusDateField = function(which){
    if(which === 'from') document.getElementById('fromDateDisplay').focus();
    if(which === 'to') document.getElementById('toDateDisplay').focus();
  };

  // Keep datepicker in sync when other code sets the hidden inputs directly (watch for change)
  ['fromDate','toDate'].forEach(hidId=>{
    const hid = document.getElementById(hidId);
    hid.addEventListener('change', function(){
      const disp = document.getElementById(hidId === 'fromDate' ? 'fromDateDisplay' : 'toDateDisplay');
      const val = hid.value;
      if(!val) { disp.value = ''; return; }
      // if hidden contains ISO (expected), show it; otherwise try parse
      const parsed = parseFlexible(val) || new Date(val);
      if(parsed && !isNaN(parsed.getTime())) disp.value = isoYMD(parsed);
      else disp.value = val;
    });
  });

  // When "Same Day" is checked in original logic, disable/enable displays too
  const sameCheck = document.getElementById('sameDay');
  if(sameCheck){
    sameCheck.addEventListener('change', function(){
      const toDisp = document.getElementById('toDateDisplay');
      if(this.checked){ toDisp.disabled = true; toDisp.classList.add('disabled'); }
      else { toDisp.disabled = false; toDisp.classList.remove('disabled'); }
    });
  }

  // initial hide
  popup.style.display = 'none';
})();

document.getElementById("leaveForm").addEventListener("reset", () => {
    document.getElementById("toDateDisplay").disabled = false;
    document.getElementById("halfDay").disabled = true;
});

</script>
</body>
</html>
