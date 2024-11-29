document.getElementById("verilog-form").addEventListener("submit", async (e) => {
  e.preventDefault();

  const code = document.getElementById("verilog-code").value;

  // Send Verilog code to the backend
  const response = await fetch("/api/compile", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ code }),
  });

  if (response.ok) {
    const { waveform } = await response.json();
    window.location.href = `waveform.html?waveform=${waveform}`;
  } else {
    const { error } = await response.json();
    document.getElementById("output").innerText = `Error: ${error}`;
  }
});
