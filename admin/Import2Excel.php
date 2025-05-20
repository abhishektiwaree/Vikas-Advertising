<!-- https://www.youtube.com/watch?v=vWbMRlUvre8 -->

<!-- https://github.com/rusty1s/table2excel -->

<!-- must must use th then td  -->
<!-- no need to thead and tbody -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.5/xlsx.full.min.js"></script> -->
    <title>Hello, world!</title>
    <script src="table2excel.js"></script>
    
</head>
<body>
    <table id="tblData">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
        </tr>
        <tr>
            <td>John Doe</td>
            <td>john@gmail.com</td>
            <td>USA</td>
        </tr>
        <tr>
            <td>Michael Addison</td>
            <td>michael@gmail.com</td>
            <td>UK</td>
        </tr>
        <tr>
            <td>Sam Farmer</td>
            <td>sam@gmail.com</td>
            <td>France</td>
        </tr>
    </table>
    <button  id="btn">Export Table Data To Excel File</button>
    <script>
        document.getElementById("btn").addEventListener('click', function(){
            var table2excel = new Table2Excel();
            table2excel.export(document.querySelectorAll("#tblData"),"Table File");
                //in the second parameter we can declare the file name that we want to store
            });
    </script>
</body>
</html>
