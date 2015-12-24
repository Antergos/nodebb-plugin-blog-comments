<div id="commentform">
<!-- IF tid -->
	<!-- IF atTop -->
		<div class="topic-profile-pic user">
			<!-- IF isLoggedIn -->
			<img src="{user.picture}" class="profile-image" />
			<!-- ELSE -->
			<img src="https://1.gravatar.com/avatar/177d180983be7a2c95a4dbe7451abeba?s=95&d=&r=PG" class="profile-image" />
			<!-- ENDIF isLoggedIn -->
		</div>
		<form action="{relative_path}/comments/reply" method="post">
			<textarea id="nodebb-content" class="form-control" name="content" placeholder="Join the conversation" rows="3"></textarea>
		<!-- IF isLoggedIn -->
			<small>Signed in as <strong>{user.username}</strong>. <strong id="nodebb-error"></strong></small>
			<button class="btn btn-primary">Post a Reply</button>
			<input type="hidden" name="_csrf" value="{token}" />
			<input type="hidden" name="tid" value="{tid}" />
			<input type="hidden" name="url" value="{redirect_url}" />
		</form>
		<!-- ELSE -->
		</form>
		<button class="et_pb_button" id="nodebb-register">Register</button>
		<button class="et_pb_button" id="nodebb-login">Login</button>
		<br />
		<!-- ENDIF isLoggedIn -->
	<!-- ENDIF atTop -->

	<ol id="commentlist clearfix">
		<!-- BEGIN posts -->
		<li class="comment nodebb-post-fadein">
			<article class="comment-body clearfix">

					<div class="comment_avatar">
						<a href="{relative_path}/user/{user.userslug}">
							<!-- IF user.picture -->
							<img src="{user.picture}" alt="{user.username}" class="profile-image" title="{user.username}">
							<!-- ELSE -->
							<div class="profile-image" style="background-color: {user.icon:bgColor}" title="{user.username}" alt="{user.username}">{user.icon:text}</div>
							<!-- ENDIF user.picture -->
						</a>
					</div>
					<div class="comment_postinfo">
					<span><strong>{user.username}</strong></span> commented <span class="comment_date">{posts.timestamp}</span>
					</div>
					<div class="comment_area">
						<div class="comment_content clearfix" itemprop="text">{posts.content}</div>
				</div>

			</article>
		</li>
		<!-- END posts -->
	</ol>
	<br />

	<!-- IF atBottom -->
		<div class="topic-profile-pic user">
			<!-- IF isLoggedIn -->
			<img src="{user.picture}" class="profile-image" />
			<!-- ELSE -->
			<img src="http://1.gravatar.com/avatar/177d180983be7a2c95a4dbe7451abeba?s=95&d=&r=PG" class="profile-image" />
			<!-- ENDIF isLoggedIn -->
		</div>
		<form action="{relative_path}/comments/reply" method="post">
			<textarea id="nodebb-content" class="form-control" name="content" placeholder="Join the conversation" rows="3"></textarea>
		<!-- IF isLoggedIn -->
			<small>Signed in as <strong>{user.username}</strong>. <strong id="nodebb-error"></strong></small>
			<div class="form-submit"><button class="et_pb_button">Post a Reply</button></div>
			<input type="hidden" name="_csrf" value="{token}" />
			<input type="hidden" name="tid" value="{tid}" />
			<input type="hidden" name="url" value="{redirect_url}" />
		</form>
		<!-- ELSE -->
		</form>
		<div class="form-submit">
		<button class="et_pb_button" id="nodebb-register">Register</button>
		<button class="et_pb_button" id="nodebb-login">Login</button>
		</div><br />
		<!-- ENDIF isLoggedIn -->
	<!-- ENDIF atBottom -->

	<small class="nodebb-copyright">Powered by <a href="http://nodebb.org" target="_blank">NodeBB</a> &bull; <a href="{relative_path}/topic/{tid}">View original thread</a></small>
	<div class="form-submit"><button class="et_pb_button" <!-- IF !posts.length -->style="display: none"<!-- ENDIF !posts.length --> id="nodebb-load-more">Load more comments...</button></div>
<!-- ELSE -->
	Commenting has been disabled.
	<!-- IF isAdmin -->
	<form action="{relative_path}/comments/publish" method="post">
		<div class="form-submit"><button class="et_pb_button et_pb_more_button">Publish this article to NodeBB</button></div>
		<input type="hidden" name="markdown" id="nodebb-content-markdown" />
		<input type="hidden" name="title" id="nodebb-content-title" />
		<input type="hidden" name="tags" id="nodebb-content-tags" />
		<input type="hidden" name="id" value="{article_id}" />
		<input type="hidden" name="url" value="{redirect_url}" />
		<input type="hidden" name="_csrf" value="{token}" />
	</form>
	<!-- ENDIF isAdmin -->
<!-- ENDIF tid -->
</div>
