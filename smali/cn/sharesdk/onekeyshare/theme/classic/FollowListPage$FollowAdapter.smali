.class Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;
.super Lcom/mob/tools/gui/o;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcn/sharesdk/framework/PlatformActionListener;


# static fields
.field private static final FOLLOW_LIST_EMPTY:I = 0x2


# instance fields
.field private bmChd:Landroid/graphics/Bitmap;

.field private bmUnch:Landroid/graphics/Bitmap;

.field private curPage:I

.field private follows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;",
            ">;"
        }
    .end annotation
.end field

.field private hasNext:Z

.field private llHeader:Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private platform:Lcn/sharesdk/framework/Platform;


# direct methods
.method public constructor <init>(Lcom/mob/tools/gui/PullToRefreshView;)V
    .locals 2

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/o;-><init>(Lcom/mob/tools/gui/PullToRefreshView;)V

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->curPage:I

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->hasNext:Z

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->map:Ljava/util/HashMap;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->follows:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->llHeader:Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;

    .line 164
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "auth_follow_cb_chd"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 165
    if-lez v0, :cond_0

    .line 166
    invoke-virtual {p1}, Lcom/mob/tools/gui/PullToRefreshView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->bmChd:Landroid/graphics/Bitmap;

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "auth_follow_cb_unc"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 169
    if-lez v0, :cond_1

    .line 170
    invoke-virtual {p1}, Lcom/mob/tools/gui/PullToRefreshView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->bmUnch:Landroid/graphics/Bitmap;

    .line 172
    :cond_1
    return-void
.end method

.method private next()V
    .locals 4

    .prologue
    .line 180
    iget-boolean v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->hasNext:Z

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->platform:Lcn/sharesdk/framework/Platform;

    const/16 v1, 0xf

    iget v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->curPage:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/sharesdk/framework/Platform;->listFriend(IILjava/lang/String;)V

    .line 183
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->follows:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->follows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->llHeader:Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;

    return-object v0
.end method

.method public getItem(I)Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->follows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 275
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x10

    const/4 v9, 0x1

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 187
    const-string v0, "FacebookMessenger"

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 188
    if-nez p2, :cond_6

    .line 189
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 190
    new-instance v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;

    invoke-direct {v0, v11}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$1;)V

    .line 191
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0x34

    invoke-static {v1, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v1

    .line 195
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v3

    .line 196
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;I)I

    move-result v4

    .line 198
    if-nez v2, :cond_0

    .line 199
    new-instance v5, Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/mob/tools/gui/AsyncImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->aivIcon:Lcom/mob/tools/gui/AsyncImageView;

    .line 200
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 201
    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 202
    invoke-virtual {v5, v3, v4, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 203
    iget-object v1, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->aivIcon:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {v1, v5}, Lcom/mob/tools/gui/AsyncImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v1, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->aivIcon:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 208
    invoke-virtual {v1, v7, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 209
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 210
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 212
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 213
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 214
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 217
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->tvName:Landroid/widget/TextView;

    .line 218
    iget-object v4, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->tvName:Landroid/widget/TextView;

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    iget-object v4, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->tvName:Landroid/widget/TextView;

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 220
    iget-object v4, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->tvName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 221
    if-eqz v2, :cond_1

    .line 222
    iget-object v4, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->tvName:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 224
    :cond_1
    iget-object v4, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->tvName:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    if-nez v2, :cond_2

    .line 227
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->tvSign:Landroid/widget/TextView;

    .line 228
    iget-object v4, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->tvSign:Landroid/widget/TextView;

    const/high16 v5, 0x7f000000

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    iget-object v4, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->tvSign:Landroid/widget/TextView;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 230
    iget-object v4, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->tvSign:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 231
    iget-object v4, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->tvSign:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 234
    :cond_2
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->ivCheck:Landroid/widget/ImageView;

    .line 235
    iget-object v1, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->ivCheck:Landroid/widget/ImageView;

    invoke-virtual {v1, v7, v7, v3, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 236
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 238
    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 239
    iget-object v3, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->ivCheck:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v1, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->ivCheck:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    :goto_0
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    move-result-object v3

    .line 246
    iget-object v1, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->tvName:Landroid/widget/TextView;

    iget-object v4, v3, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->screenName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    if-nez v2, :cond_3

    .line 248
    iget-object v1, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->tvSign:Landroid/widget/TextView;

    iget-object v4, v3, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->description:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :cond_3
    iget-object v4, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->ivCheck:Landroid/widget/ImageView;

    iget-boolean v1, v3, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->checked:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->bmChd:Landroid/graphics/Bitmap;

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 251
    if-nez v2, :cond_4

    .line 252
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->isFling()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 253
    iget-object v1, v3, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->icon:Ljava/lang/String;

    invoke-static {v1}, Lcom/mob/tools/gui/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 254
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_8

    .line 255
    iget-object v0, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->aivIcon:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 264
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_5

    .line 265
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->next()V

    .line 267
    :cond_5
    return-object p2

    .line 242
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;

    goto :goto_0

    .line 250
    :cond_7
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->bmUnch:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 257
    :cond_8
    iget-object v0, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->aivIcon:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {v0, v11, v7}, Lcom/mob/tools/gui/AsyncImageView;->a(Ljava/lang/String;I)V

    goto :goto_2

    .line 260
    :cond_9
    iget-object v0, v0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowListItem;->aivIcon:Lcom/mob/tools/gui/AsyncImageView;

    iget-object v1, v3, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Lcom/mob/tools/gui/AsyncImageView;->a(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .prologue
    .line 324
    iget v0, p1, Landroid/os/Message;->what:I

    if-gez v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 337
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 326
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 327
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 329
    :cond_1
    iget v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->curPage:I

    if-gtz v0, :cond_2

    .line 330
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->follows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 333
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 334
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->follows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 335
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 1

    .prologue
    .line 299
    const/4 v0, -0x1

    invoke-static {v0, p0}, Lcom/mob/tools/b/j;->a(ILandroid/os/Handler$Callback;)Z

    .line 300
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->map:Ljava/util/HashMap;

    invoke-static {v0, p3, v1}, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity;->parseFollowers(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;

    move-result-object v0

    .line 305
    if-nez v0, :cond_1

    .line 306
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/mob/tools/b/j;->a(ILandroid/os/Handler$Callback;)Z

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-boolean v1, v0, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;->hasNextPage:Z

    iput-boolean v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->hasNext:Z

    .line 310
    iget-object v1, v0, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;->list:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 311
    iget v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->curPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->curPage:I

    .line 312
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 313
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 314
    iget-object v0, v0, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;->list:Ljava/util/ArrayList;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 315
    invoke-static {v1, p0}, Lcom/mob/tools/b/j;->a(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto :goto_0
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 320
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 321
    return-void
.end method

.method public onPullDown(I)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->llHeader:Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;

    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->onPullDown(I)V

    .line 288
    return-void
.end method

.method public onRequest()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->llHeader:Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->onRequest()V

    .line 292
    const/4 v0, -0x1

    iput v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->curPage:I

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->hasNext:Z

    .line 294
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 295
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->next()V

    .line 296
    return-void
.end method

.method public onReversed()V
    .locals 1

    .prologue
    .line 341
    invoke-super {p0}, Lcom/mob/tools/gui/o;->onReversed()V

    .line 342
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->llHeader:Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$PRTHeader;->reverse()V

    .line 343
    return-void
.end method

.method public setPlatform(Lcn/sharesdk/framework/Platform;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage$FollowAdapter;->platform:Lcn/sharesdk/framework/Platform;

    .line 176
    invoke-virtual {p1, p0}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 177
    return-void
.end method
