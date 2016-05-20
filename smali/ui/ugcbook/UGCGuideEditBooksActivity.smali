.class public Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/ListView;

.field private c:Landroid/view/View;

.field private e:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;

.field private f:Ljava/lang/String;

.field private g:Lcom/ushaqi/zhuishushenqi/model/Author;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->a:Ljava/util/Map;

    .line 444
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;I)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x2710

    const-wide/16 v6, 0x64

    .line 48
    .line 1190
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v0

    .line 1191
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1194
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 1195
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03016c

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 1196
    const v1, 0x7f0c0023

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getFullCover()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020106

    invoke-virtual {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;I)V

    .line 1197
    const v1, 0x7f0c0048

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    const v1, 0x7f0c01c5

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1199
    const v1, 0x7f0c038f

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getLatelyFollower()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1200
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getWordCount()I

    move-result v1

    int-to-long v2, v1

    .line 1201
    const-string v1, " \u5b57"

    .line 1202
    cmp-long v4, v2, v8

    if-lez v4, :cond_3

    .line 1203
    div-long/2addr v2, v8

    .line 1204
    const-string v1, " \u4e07\u5b57"

    move-object v4, v1

    .line 1209
    :goto_1
    const v1, 0x7f0c0390

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1210
    const v1, 0x7f0c0391

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    const v1, 0x7f0c047d

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1213
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getAppendComment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getAppendComment()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1214
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getAppendComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1218
    :goto_2
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1219
    if-eqz v2, :cond_2

    .line 1220
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1223
    :cond_2
    new-instance v2, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v2, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Luk/me/lewisdeane/ldialogs/h;->a(Landroid/view/View;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v2

    const-string v3, "\u4fdd\u5b58"

    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/K;

    invoke-direct {v4, p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/K;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;Lcom/ushaqi/zhuishushenqi/model/BookSummary;Landroid/widget/EditText;)V

    .line 1224
    invoke-virtual {v2, v3, v4}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v2

    const v3, 0x7f050011

    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/J;

    invoke-direct {v4, p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/J;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;Lcom/ushaqi/zhuishushenqi/model/BookSummary;Landroid/widget/EditText;)V

    .line 1231
    invoke-virtual {v2, v3, v4}, Luk/me/lewisdeane/ldialogs/h;->b(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 1237
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1238
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/L;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/L;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1205
    :cond_3
    cmp-long v4, v2, v6

    if-lez v4, :cond_5

    .line 1206
    div-long/2addr v2, v6

    .line 1207
    const-string v1, " \u767e\u5b57"

    move-object v4, v1

    goto/16 :goto_1

    .line 1216
    :cond_4
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    move-object v4, v1

    goto/16 :goto_1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 154
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->e:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;->a(Ljava/util/Collection;)V

    .line 156
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;I)V
    .locals 5

    .prologue
    .line 48
    .line 1248
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v1

    .line 1249
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1252
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 1253
    new-instance v2, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v2, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const-string v3, "\u786e\u8ba4\u5220\u9664\u672c\u4e66\uff1f"

    .line 2046
    iput-object v3, v2, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 1253
    const v3, 0x7f050138

    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/M;

    invoke-direct {v4, p0, v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/M;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;Ljava/util/List;Lcom/ushaqi/zhuishushenqi/model/BookSummary;)V

    .line 1254
    invoke-virtual {v2, v3, v4}, Luk/me/lewisdeane/ldialogs/h;->a(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const v1, 0x7f050011

    const/4 v2, 0x0

    .line 1261
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 1262
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Z
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 48
    .line 1179
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->e:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;->getCount()I

    move-result v2

    if-ge v2, v3, :cond_0

    .line 1180
    const-string v2, "\u592a\u5c11\u5566\uff0c\u5355\u4e2a\u4e66\u5355\u81f3\u5c11\u9700\u8981%d\u672c\u5c0f\u8bf4\u54e6"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1181
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 48
    goto :goto_0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->b()V

    return-void
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->h:Z

    return v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Lcom/ushaqi/zhuishushenqi/model/Author;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->g:Lcom/ushaqi/zhuishushenqi/model/Author;

    return-object v0
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onAddShelfBooks(Lcom/ushaqi/zhuishushenqi/event/D;)V
    .locals 4
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 150
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/N;

    invoke-direct {v0, p0, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/N;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/D;->a()[Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/N;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 151
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 176
    :goto_0
    return-void

    .line 168
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 172
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x7f0c0479
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const v6, 0x7f050150

    const/4 v5, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f030169

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->setContentView(I)V

    .line 68
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 73
    if-eqz v4, :cond_1

    const-string v0, "name"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "desc"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    const-string v0, "name"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    const-string v0, "desc"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v3, v1

    .line 80
    :goto_0
    const-string v0, "ugc_id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->f:Ljava/lang/String;

    .line 81
    const-string v0, "my_author"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Author;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->g:Lcom/ushaqi/zhuishushenqi/model/Author;

    .line 82
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_draft"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->h:Z

    .line 84
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 86
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->f:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    :cond_0
    const-string v0, "\u7f16\u8f91\u4e66\u5355"

    const v1, 0x7f05016b

    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/H;

    invoke-direct {v4, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/H;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)V

    invoke-virtual {p0, v0, v1, v6, v4}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->a(Ljava/lang/String;IILcom/ushaqi/zhuishushenqi/ui/ab;)V

    .line 115
    :goto_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->setDesc(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->setTitle(Ljava/lang/String;)V

    .line 119
    const v0, 0x7f0c003c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->b:Landroid/widget/ListView;

    .line 120
    const v0, 0x7f0c0476

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->c:Landroid/view/View;

    .line 123
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03016a

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 124
    const v0, 0x7f0c0477

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    const v1, 0x7f0c0478

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 126
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->b:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 129
    const v0, 0x7f0c047a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v0, 0x7f0c0479

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030114

    invoke-direct {v0, p0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;Landroid/view/LayoutInflater;I)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->e:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;

    .line 133
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->e:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Q;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    return-void

    .line 77
    :cond_1
    const-string v1, "default_name"

    .line 78
    const-string v0, "default_desc"

    move-object v2, v0

    move-object v3, v1

    goto/16 :goto_0

    .line 105
    :cond_2
    const-string v0, "\u4e66\u5355\u8be6\u60c5"

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/I;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/I;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)V

    invoke-virtual {p0, v0, v6, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->a(Ljava/lang/String;ILcom/ushaqi/zhuishushenqi/ui/aa;)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onDestroy()V

    .line 145
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onResume()V

    .line 139
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->b()V

    .line 140
    return-void
.end method
