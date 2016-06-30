package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.model.BookReviewRoot;
import com.clilystudio.netbook.ui.post.AddReviewRatingActivity;
import com.clilystudio.netbook.ui.post.BookPostTabActivity;
import com.clilystudio.netbook.ui.post.ReviewActivity;
import com.clilystudio.netbook.widget.RatingView;

import butterknife.ButterKnife;

public class BestReviewsFragment extends Fragment {
    private View a;
    private LinearLayout b;
    private boolean c = false;

    static /* synthetic */ View a(BestReviewsFragment bestReviewsFragment) {
        return bestReviewsFragment.a;
    }

    public static BestReviewsFragment a(String string, String string2) {
        BestReviewsFragment bestReviewsFragment = new BestReviewsFragment();
        Bundle bundle = new Bundle();
        bundle.putString("args_book_id", string);
        bundle.putString("args_book_title", string2);
        bestReviewsFragment.setArguments(bundle);
        return bestReviewsFragment;
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(final BestReviewsFragment bestReviewsFragment, final BookReview bookReview) {
        View view = bestReviewsFragment.getLayoutInflater(null).inflate(R.layout.list_item_book_review, (ViewGroup) bestReviewsFragment.b, false);
        BestReviewsFragment.ViewHolder viewHolder = new BestReviewsFragment.ViewHolder(bestReviewsFragment, view);
        Author author = bookReview.author;
        viewHolder.avatar.setImageUrl(author.getScaleAvatar(), R.drawable.avatar_default);
        viewHolder.user.setText(author.getNickname());
        viewHolder.lv.setText("lv." + author.getLv());
        viewHolder.time.setVisibility(View.GONE);
        viewHolder.title.setText(bookReview.title);
        viewHolder.content.setText(bookReview.content);
        viewHolder.helpfulCount.setText("" + bookReview.helpful.getYes());
        viewHolder.container.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(bestReviewsFragment.getActivity(), ReviewActivity.class);
                intent.putExtra("extraReviewId", bookReview._id);
                bestReviewsFragment.startActivity(intent);
            }
        });
        if (bestReviewsFragment.c) {
            String string = author.getGender();
            if ("male".equals(string)) {
                viewHolder.avatarVerify.setVisibility(View.VISIBLE);
                viewHolder.avatarVerify.setImageLevel(2);
            } else if ("female".equals(string)) {
                viewHolder.avatarVerify.setVisibility(View.VISIBLE);
                viewHolder.avatarVerify.setImageLevel(3);
            } else {
                viewHolder.avatarVerify.setVisibility(View.VISIBLE);
                viewHolder.avatarVerify.setImageLevel(4);
            }
        } else {
            String string = author.getType();
            if ("official".equals(string)) {
                viewHolder.avatarVerify.setVisibility(View.VISIBLE);
                viewHolder.avatarVerify.setImageLevel(0);
            } else if ("doyen".equals(string)) {
                viewHolder.avatarVerify.setVisibility(View.VISIBLE);
                viewHolder.avatarVerify.setImageLevel(1);
            } else {
                viewHolder.avatarVerify.setVisibility(View.GONE);
            }
        }
        viewHolder.rating.setValue(bookReview.rating);
        bestReviewsFragment.b.addView(view);
    }

    static /* synthetic */ void b(final BestReviewsFragment bestReviewsFragment) {
        bestReviewsFragment.a.findViewById(R.id.best_reviews_edit).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String string = bestReviewsFragment.getArguments().getString("args_book_id");
                Intent intent = new Intent(bestReviewsFragment.getActivity(), AddReviewRatingActivity.class);
                intent.putExtra("bookReviewBookId", string);
                bestReviewsFragment.startActivity(intent);
            }
        });
    }

    static /* synthetic */ void c(final BestReviewsFragment bestReviewsFragment) {
        bestReviewsFragment.a.findViewById(R.id.more).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = BookPostTabActivity.a(bestReviewsFragment.getActivity(), bestReviewsFragment.getArguments().getString("args_book_id"), bestReviewsFragment.getArguments().getString("args_book_title"));
                intent.putExtra("extra_tab_default_index", 1);
                bestReviewsFragment.startActivity(intent);
            }
        });
    }

    static /* synthetic */ void d(BestReviewsFragment bestReviewsFragment) {
        View view = bestReviewsFragment.getLayoutInflater(null).inflate(R.layout.horizontal_divider, (ViewGroup) bestReviewsFragment.b, false);
        bestReviewsFragment.b.addView(view);
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        e<String, Void, BookReview[]> ah2 = new e<String, Void, BookReview[]>() {

            @Override
            protected BookReview[] doInBackground(String... params) {
                com.clilystudio.netbook.api.b.a();
                BookReviewRoot bookReviewRoot = com.clilystudio.netbook.api.b.b().C(params[0]);
                if (bookReviewRoot == null) return null;
                if (!bookReviewRoot.ok) return null;
                if (bookReviewRoot.reviews == null) return null;
                return bookReviewRoot.reviews;
            }

            @Override
            protected void onPostExecute(BookReview[] bookReviews) {
                int n = 2;
                super.onPostExecute(bookReviews);
                if (getActivity() == null || bookReviews == null) {
                    return;
                }
                View view = BestReviewsFragment.a(BestReviewsFragment.this).findViewById(R.id.best_reviews_root);
                view.setVisibility(View.VISIBLE);
                int n2 = bookReviews.length;
                if (n2 == 0) {
                    view.findViewById(R.id.best_reviews_top).setVisibility(View.GONE);
                    view.findViewById(R.id.best_reviews_top_empty).setVisibility(View.VISIBLE);
                    BestReviewsFragment.b(BestReviewsFragment.this);
                    return;
                }
                view.findViewById(R.id.best_reviews_top).setVisibility(View.VISIBLE);
                view.findViewById(R.id.best_reviews_top_empty).setVisibility(View.GONE);
                BestReviewsFragment.c(BestReviewsFragment.this);
                if (n2 <= n) {
                    n = n2;
                }
                int n3 = 0;
                while (n3 < n) {
                    BookReview bookReview = bookReviews[n3];
                    if (n3 == 1) {
                        BestReviewsFragment.d(BestReviewsFragment.this);
                    }
                    BestReviewsFragment.a(BestReviewsFragment.this, bookReview);
                    ++n3;
                }

            }
        };
        ah2.b(this.getArguments().getString("args_book_id"));
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.a = layoutInflater.inflate(R.layout.fragment_best_reviews, viewGroup, false);
        ButterKnife.inject((Object) this, this.a);
        this.b = (LinearLayout) this.a.findViewById(R.id.reviews);
        this.c = a.r(this.a.getContext(), "community_user_gender_icon_toggle");
        return this.a;
    }

    public static class ViewHolder {
        SmartImageView avatar;
        ImageView avatarVerify;
        View container;
        TextView content;
        TextView helpfulCount;
        TextView lv;
        RatingView rating;
        TextView time;
        TextView title;
        TextView user;

        ViewHolder(BestReviewsFragment bestReviewsFragment, View view) {
            this.avatar = (SmartImageView) view.findViewById(R.id.avatar);
            this.user = (TextView) view.findViewById(R.id.user);
            this.lv = (TextView) view.findViewById(R.id.lv);
            this.time = (TextView) view.findViewById(R.id.time);
            this.title = (TextView) view.findViewById(R.id.title);
            this.content = (TextView) view.findViewById(R.id.content);
            this.helpfulCount = (TextView) view.findViewById(R.id.helpful_count);
            this.avatarVerify = (ImageView) view.findViewById(R.id.avatar_verify);
            this.rating = (RatingView) view.findViewById(R.id.rating);
            this.container = view.findViewById(R.id.list_item_book_review_container);
        }
    }
}
