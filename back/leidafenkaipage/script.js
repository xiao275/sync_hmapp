var canvas = document.getElementById('canvas')
                canvas.width = 800
                canvas.height = 800
                var ctx = canvas.getContext('2d')
                ctx.fillStyle = 'rgb(255,255,255)'
                ctx.fillRect(0, 0, canvas.width, canvas.height)
                var count = 6
                var powers = []
                function init() {
                    for (var j = 0; j <= 5; j++) {
                        ctx.beginPath()
                        for (var i = 0; i < count; i++) {
                            ctx.strokeStyle = 'gray'
                            var r = j * 40
                            var deg = (((i / count) * 360 - 45) * Math.PI) / 180
                            var x = r * Math.sin(deg) + r * Math.cos(deg) + 400
                            var y = r * Math.sin(deg) - r * Math.cos(deg) + 400
                            ctx.lineTo(x, y)
                        }
                        ctx.closePath()
                        ctx.stroke()
                    }
                    ctx.beginPath()
                    for (var i = 0; i < count; i++) {
                        ctx.moveTo(400, 400)
                        r = 200
                        var deg = (((i / count) * 360 - 45) * Math.PI) / 180
                        var x = r * Math.sin(deg) + r * Math.cos(deg) + 400
                        var y = r * Math.sin(deg) - r * Math.cos(deg) + 400
                        ctx.lineTo(x, y)
                        powers.push(Math.random() * 100 + 100)
                    }
                    ctx.stroke()
                }
                function draw(){
                    ctx.beginPath()
                    ctx.lineWidth=2
                    ctx.strokeStyle='green'
                    for(var i=0;i<powers.length;i++){
                        var r=powers[i]
                        var deg = (((i / count) * 360 - 45) * Math.PI) / 180
                        var x = r * Math.sin(deg) + r * Math.cos(deg) + 400
                        var y = r * Math.sin(deg) - r * Math.cos(deg) + 400
                        ctx.lineTo(x, y)
                    }
                    ctx.closePath()
                    ctx.stroke()
                    ctx.fillStyle="rgba(0,255,0,0.2)"
                    ctx.fill()
                }
                init()
                draw()