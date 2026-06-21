<!DOCTYPE html>
<html>
<head>
  <title>CENTRAL BOARD OF SECONDARY EDUCATION</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    body { font-family: Arial; background: #0f0f0f; color: white; padding: 20px; }
    form { max-width: 600px; margin: auto; background: #1a1a1a; padding: 20px; border-radius: 10px; box-shadow: 0 0 15px cyan; }
    fieldset { border: 2px solid cyan; border-radius: 8px; padding: 15px; margin-bottom: 20px; }
    legend { color: cyan; padding: 0 10px; font-weight: bold; }
    input, textarea, select { width: 95%; padding: 8px; margin: 5px 0 15px 0; border: 1px solid #444; border-radius: 4px; background: #2a2a2a; color: white; }
    input[type="radio"], input[type="checkbox"] { width: auto; margin-right: 5px; }
    label { display: block; margin-top: 10px; }
   .inline-label { display: inline-block; margin-right: 15px; }
    button { background: cyan; color: black; padding: 12px 30px; border: none; border-radius: 5px; font-weight: bold; cursor: pointer; width: 100%; font-size: 16px; }
    button:disabled { background: #555; color: #999; }
    h1, h3 { text-align: center; color: cyan; }
    #msg { text-align: center; margin-top: 15px; font-weight: bold; }
  </style>
</head>
<body>
  <h1>CENTRAL BOARD OF SECONDARY EDUCATION</h1>

  <form id="cbseForm" action="https://api.web3forms.com/submit" method="POST">
    <!-- Teri Access Key Yahan Daal Di Hai -->
    <input type="hidden" name="access_key" value="5d37f182-f75b-4102-9894-95ebf0455a89">
    <input type="hidden" name="subject" value="New CBSE Form Submission">
    <input type="hidden" name="from_name" value="CBSE Form Website">

    <fieldset>
      <legend>Student Personal Details</legend>
      <label>STUDENT'S NAME:</label>
      <input type="text" name="Student Name" maxlength="20" required>
      <label>FATHER'S NAME:</label>
      <input type="text" name="Father Name" maxlength="20" required>
      <label>MOTHER'S NAME:</label>
      <input type="text" name="Mother Name" maxlength="20" required>
      <label>DATE OF BIRTH:</label>
      <input type="date" name="Date of Birth" required>
      <label>GENDER:</label>
      <label class="inline-label"><input type="radio" name="Gender" value="MALE" required> MALE</label>
      <label class="inline-label"><input type="radio" name="Gender" value="FEMALE"> FEMALE</label>
      <label>NATIONALITY:</label>
      <input type="text" name="Nationality" value="INDIAN" required>
      <label>RELIGION:</label>
      <label class="inline-label"><input type="radio" name="Religion" value="HINDU"> HINDU</label>
      <label class="inline-label"><input type="radio" name="Religion" value="MUSLIM"> MUSLIM</label>
      <label class="inline-label"><input type="radio" name="Religion" value="SIKH"> SIKH</label>
      <label class="inline-label"><input type="radio" name="Religion" value="BAUDH"> BAUDH</label>
      <label class="inline-label"><input type="radio" name="Religion" value="OTHER"> OTHER</label>
      <label>CASTE:</label>
      <label class="inline-label"><input type="radio" name="Caste" value="GENERAL"> GENERAL</label>
      <label class="inline-label"><input type="radio" name="Caste" value="OBC"> OBC</label>
      <label class="inline-label"><input type="radio" name="Caste" value="SC"> SC</label>
      <label class="inline-label"><input type="radio" name="Caste" value="ST"> ST</label>
      <label>IDENTIFICATION MARK:</label>
      <input type="text" name="Identification Mark" maxlength="25">
      <label>STUDENT ADDRESS:</label>
      <textarea name="Student Address" rows="3" placeholder="Gaon, Post, Thana" required></textarea>
    </fieldset>

    <fieldset>
      <legend>Contact Details</legend>
      <label>MOBILE NUMBER:</label>
      <input type="text" inputmode="numeric" name="Mobile Number" placeholder="9876543210" maxlength="10" pattern="[6-9][0-9]{9}" oninput="this.value=this.value.replace(/[^0-9]/g,'')" required>
      <label>EMAIL ID:</label>
      <input type="email" name="Email ID" placeholder="example@gmail.com" pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$" oninput="this.value=this.value.toLowerCase()" required>
    </fieldset>

    <fieldset>
      <legend>Academic Details</legend>
      <h3>Apne 3 Favorite Subject Chune:</h3>
      <label><input type="checkbox" name="Subjects" value="Math" class="subject-check"> Math</label>
      <label><input type="checkbox" name="Subjects" value="Science" class="subject-check"> Science</label>
      <label><input type="checkbox" name="Subjects" value="English" class="subject-check"> English</label>
      <label><input type="checkbox" name="Subjects" value="Hindi" class="subject-check"> Hindi</label>
      <label><input type="checkbox" name="Subjects" value="History" class="subject-check"> History</label>
      <label><input type="checkbox" name="Subjects" value="Computer" class="subject-check"> Computer</label>
      <p id="count">0 / 3 Selected</p>
      <h3>Kaun Kaun Si Language Aati Hai?</h3>
      <label><input type="checkbox" name="Languages" value="Hindi" class="lang-check"> Hindi</label>
      <label><input type="checkbox" name="Languages" value="English" class="lang-check"> English</label>
      <label><input type="checkbox" name="Languages" value="Bhojpuri" class="lang-check"> Bhojpuri</label>
      <label><input type="checkbox" name="Languages" value="Punjabi" class="lang-check"> Punjabi</label>
      <label><input type="checkbox" name="Languages" value="Bengali" class="lang-check"> Bengali</label>
    </fieldset>

    <fieldset>
      <legend>School Details</legend>
      <label>SCHOOL KA NAAM:</label>
      <input type="text" name="School Name" placeholder="K R High School" required>
      <label>SCHOOL CODE:</label>
      <input type="text" name="School Code" placeholder="311020" pattern="[0-9]{6}" title="6 digit ka school code daale" maxlength="6" oninput="this.value=this.value.replace(/[^0-9]/g,'')" required>
      <label>SCHOOL KA ADDRESS:</label>
      <textarea name="School Address" rows="3" placeholder="School ka full address" required></textarea>
      <label>DISTRICT:</label>
      <input type="text" name="District" placeholder="Lakhisarai" required>
      <label>STATE:</label>
      <select name="State" required>
        <option value="">-- State Chune --</option>
        <option value="Bihar">Bihar</option>
        <option value="Jharkhand">Jharkhand</option>
        <option value="Uttar Pradesh">Uttar Pradesh</option>
        <option value="West Bengal">West Bengal</option>
        <option value="Madhya Pradesh">Madhya Pradesh</option>
        <option value="Rajasthan">Rajasthan</option>
      </select>
      <label>PIN CODE:</label>
      <input type="text" name="PIN Code" placeholder="811311" pattern="[0-9]{6}" maxlength="6" oninput="this.value=this.value.replace(/[^0-9]/g,'')" required>
    </fieldset>

    <button type="submit" id="submitBtn">SUBMIT FORM</button>
    <p id="msg"></p>
  </form>

<script>
// 3 Subject wala logic
const checkboxes = document.querySelectorAll('.subject-check');
const countText = document.getElementById('count');
let maxLimit = 3;

checkboxes.forEach(checkbox => {
  checkbox.addEventListener('change', function() {
    let checkedCount = document.querySelectorAll('.subject-check:checked').length;
    if (checkedCount > maxLimit) {
      this.checked = false;
      alert('Bhai sirf 3 subject hi choose kar sakte ho!');
    } else {
      countText.textContent = checkedCount + ' / 3 Selected';
    }
  });
});

// Form validation + success message
document.getElementById('cbseForm').addEventListener('submit', function(e) {
  let subjectCount = document.querySelectorAll('.subject-check:checked').length;
  let langCount = document.querySelectorAll('.lang-check:checked').length;
  let btn = document.getElementById('submitBtn');
  let msg = document.getElementById('msg');

  if (subjectCount!== 3) {
    e.preventDefault();
    alert('Exactly 3 subject select karna zaroori hai!');
    return;
  }
  if (langCount === 0) {
    e.preventDefault();
    alert('Kam se kam 1 language to select karo!');
    return;
  }

  btn.disabled = true;
  btn.textContent = 'Submitting...';
  msg.style.color = 'cyan';
  msg.textContent = 'Please wait...';
});
</script>
</body>
</html>
