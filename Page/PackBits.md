PACKBITS is a fast, simple lossless compression scheme for run-length encoding of data.

Apple introduced the PackBits format with the release of MacPaint on the Macintosh computer. This compression scheme is one of the types of compression that can be used in TIFF-files. TGA-files also use this RLE compression scheme, but treats data stream as pixels instead of bytes.

A PackBits data stream consists of packets with a one-byte header followed by data. The header is a signed byte; the data can be signed, unsigned, or packed (such as MacPaint pixels).

In the following table, _n_ is the value of the header byte as a signed integer.

  Header byte   Data following the header byte
  ------------- -----------------------------------------------------------------------
  0 to 127      (1 + _n_) literal bytes of data
  -1 to -127    One byte of data, repeated (1 – _n_) times in the decompressed output
  -128          No operation (skip and treat next byte as a header byte)


Note that interpreting 0 as positive or negative makes no difference in the output. Runs of two bytes adjacent to non-runs are typically written as literal data. It should also be noted that there is no way based on the PackBits data to determine the end of the data stream; that is to say, one must already know the size of the compressed or uncompressed data before reading a PackBits data stream to know where it ends.

Apple Computer (see the external link) provides this short example of packed data: FE AA 02 80 00 2A FD AA 03 80 00 2A 22 F7 AA

The following code, written in Microsoft VBA, unpacks the data:

    Sub UnpackBitsDemo()
       Dim File As Variant
       Dim MyOutput As String
       Dim Count As Long
       Dim i As Long, j As Long

       File = "FE AA 02 80 00 2A FD AA 03 80 00 2A 22 F7 AA"
       File = Split(File, " ")

       For i = LBound(File) To UBound(File)
          Count = Application.WorksheetFunction.Hex2Dec(File(i))
          Select Case Count
          Case Is >= 128
             Count = 256 - Count 'Two's Complement
             For j = 0 To Count 'zero-based
                MyOutput = MyOutput & File(i + 1) & " "
             Next j
             i = i + 1 'Adjust the pointer
          Case Else
             For j = 0 To Count 'zero-based
                MyOutput = MyOutput & File(i + j + 1) & " "
             Next j
             i = i + j 'Adjust the pointer
          End Select
       Next i

       Debug.Print MyOutput
       'AA AA AA 80 00 2A AA AA AA AA 80 00 2A 22 AA AA AA AA AA AA AA AA AA AA
    End Sub

The same implementation in JS:

    /**
     * Helper functions to create readable input and output
     *
     * Also, see this fiddle for interactive PackBits decoder:
     * https://jsfiddle.net/volter9/tj04ejdt/
     */

    function str2hex (str) {
        return str.split('').map(function (char) {
            var value = char.charCodeAt(0);

            return ((value < 16 ? '0' : '') + value.toString(16)).toUpperCase();
        }).join(' ');
    }

    function hex2str (hex) {
        return hex.split(' ').map(function (string) {
            return String.fromCharCode(parseInt(string, 16));
        }).join('');
    }

    /**
     * PackBits unpack function
     *
     * @param {String} data
     * @return {String}
     */
    function unpackBits (data) {
        var output = '',
        i = 0;

        while (i < data.length) {
            var hex = data.charCodeAt(i);

            if (hex >= 128) {
                hex = 256 - hex;

                for (var j = 0; j <= hex; j ++) {
                    output += data.charAt(i + 1);
                }

                i ++;
            }
            else {
                for (var j = 0; j <= hex; j ++) {
                    output += data.charAt(i + j + 1);
                }

                i += j;
            }

            i ++;
        }

        return output;
    }

    var original = 'FE AA 02 80 00 2A FD AA 03 80 00 2A 22 F7 AA',
        data = unpackBits(hex2str(original));

    // Output is: AA AA AA 80 00 2A AA AA AA AA 80 00 2A 22 AA AA AA AA AA AA AA AA AA AA
    console.log(str2hex(data));


External links

-   Apple webpage describing the PackBits format

Category:Lossless compression algorithms