class ExceptionsController < ApplicationController
  def render_error
    # Return only the numbers and remove the preceding slash
    status_code = request.path_info[1..-1]

    render inertia: 'Error', props: {
      status: status_code
    },
    status: status_code
  end
end