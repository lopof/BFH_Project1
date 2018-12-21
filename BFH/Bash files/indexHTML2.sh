echo Start indexHTML2

(cat <<markierungszeile_fuer_das_ende_der_eingabe
        </div>
			<div class="column secviewer">
				<div class="papaya"data-params="params"></div>
			</div>

	</div>
	</body>
	
	<script>
        window.onload = function () {

            var toggler = document.getElementsByClassName("caret");
            var i;

            for (i = 0; i < toggler.length; i++) {
                toggler[i].addEventListener("click", function() {
                    this.parentElement.querySelector(".nested").classList.toggle("active");
                    this.classList.toggle("caret-down");
                });
            }

        }
    </script>

	
</html>
markierungszeile_fuer_das_ende_der_eingabe
) >> index.html

echo End Script
