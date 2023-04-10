<section class="section dashboard">
  <div class="row">

    <!-- Left side columns -->
    <div class="col-lg-12">
      <div class="row">

        <div class="col-xxl-4 col-md-4">
          <a class="card info-card sales-card" href="index.php?page=patients">

            <div class="card-body">
              <h5 class="card-title">Patient/s</h5>

              <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                  <i class="bi bi-people"></i>
                </div>
                <div class="ps-3">
                  <h6>
                    <?= count($patients) ?>
                  </h6>
                </div>
              </div>
            </div>

          </a>
        </div>

        <div class="col-xxl-4 col-md-4">
          <a class="card info-card sales-card" href="index.php?page=doctors">

            <div class="card-body">
              <h5 class="card-title">Doctor/s</h5>

              <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                  <i class="bi bi-people"></i>
                </div>
                <div class="ps-3">
                  <h6>
                    <?= count($doctors) ?>
                  </h6>
                </div>
              </div>
            </div>

          </a>
        </div>

        <div class="col-xxl-4 col-md-4">
          <a class="card info-card sales-card" href="index.php?page=appointments">

            <div class="card-body">
              <h5 class="card-title">Appointment/s</h5>

              <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                  <i class="bi bi-calendar-check"></i>
                </div>
                <div class="ps-3">
                  <h6>
                    <?= count($appointments) ?>
                  </h6>
                </div>
              </div>
            </div>

          </a>
        </div>

        <div class="col-12">
          <div class="card top-selling overflow-auto">

            <div class="card-body pb-0">
              <h5 class="card-title">
                Session Logs
              </h5>
              
              <?php if(count($sessions) == 0): ?>
                <div class="alert alert-warning">
                  No session logs found.
                </div>
              <?php else : ?>
                <div class="table-responsive">
                  <table class="table table-borderless">
                    <thead>
                      <tr>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Role</th>
                        <th scope="col">Login Time</th>
                        <th scope="col">Logout Time</th>
                        <th scope="col">Status</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php foreach($sessions as $log): ?>
                        <?php $name = $user->find($log->user_id); ?>
                      <tr>
                        <td><?= $name->user_first_name . ' ' . $name->user_last_name ?></td>
                        <td><?= $name->user_email ?></td>
                        <td><?= $name->user_role ?></td>
                        <td><?= $log->session_login_time ?></td>
                        <td><?= $log->session_logout_time ?></td>
                        <td><?= $log->session_status ?></td>
                      </tr>
                      <?php endforeach; ?>
                    </tbody>
                  </table>
                </div>
              <?php endif; ?>

            </div>

          </div>
        </div>

      </div>
    </div><!-- End Left side columns -->

  </div>
</section>