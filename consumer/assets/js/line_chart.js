import Chart from 'chart.js/auto'
import 'chartjs-adapter-luxon'
import ChartStreaming from 'chartjs-plugin-streaming'
Chart.register(ChartStreaming)

// A wrapper of Chart.js that configures the realtime line chart.
export default class {
  constructor(ctx) {
    const config = {
      //Your code for type here
      data: { datasets: [] },
      options: {
        datasets: {
          line: {
            tension: 0.2
          }
        },
        plugins: {
          title: {
            display: true,
            text: 'OS Monitoring Application',
            font: {size: 20}
          },
          streaming: {
            // Your code for streaming here
          }
        },
        scales: {
          x: {
            // Your code for x-axis here
          }
        }
      }
    }
 
    this.chart = new Chart(ctx, config)
  }
  // Add other functions here
}