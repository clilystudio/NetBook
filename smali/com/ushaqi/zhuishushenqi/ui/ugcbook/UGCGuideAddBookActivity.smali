.class public Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/inputmethod/InputMethodManager;

.field private b:Ljava/lang/String;

.field private c:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/ListView;

.field private h:Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;

.field private l:Landroid/view/View;

.field private m:Ljava/lang/String;

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 427
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->m:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 383
    packed-switch p1, :pswitch_data_0

    .line 405
    :goto_0
    return-void

    .line 385
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 390
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 395
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 400
    :pswitch_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;I)V
    .locals 2

    .prologue
    .line 54
    .line 4190
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 4191
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 4192
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v1

    .line 4193
    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->addBook(Lcom/ushaqi/zhuishushenqi/model/BookSummary;)V

    .line 4194
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->setSelected(Z)V

    .line 54
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 173
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->h:Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->b:Ljava/lang/String;

    .line 175
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->f()V

    .line 176
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->t(Landroid/content/Context;)Z

    move-result v0

    .line 177
    if-eqz v0, :cond_1

    .line 178
    invoke-direct {p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->a(I)V

    .line 179
    if-eqz p1, :cond_0

    .line 180
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/w;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/w;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;B)V

    new-array v1, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->b:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/w;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 187
    :goto_0
    return-void

    .line 182
    :cond_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;B)V

    new-array v1, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->b:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 185
    :cond_1
    const v0, 0x7f050132

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;Z)Z
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 361
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->requestFocus()Z

    .line 362
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;Z)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 54
    .line 4543
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4544
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 54
    goto :goto_0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;Z)V
    .locals 2

    .prologue
    .line 54
    .line 3372
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 3373
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 3374
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->f:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 54
    return-void

    .line 3374
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->n:Z

    return v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->h:Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->clearFocus()V

    .line 1351
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->a:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 1352
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->a:Landroid/view/inputmethod/InputMethodManager;

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->a:Landroid/view/inputmethod/InputMethodManager;

    .line 367
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 368
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 369
    return-void
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)V
    .locals 1

    .prologue
    .line 54
    .line 5169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->a(Z)V

    .line 54
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 409
    .line 1421
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->h:Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 409
    :goto_0
    if-eqz v0, :cond_1

    .line 2417
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->h:Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;->setVisibility(I)V

    .line 414
    :goto_1
    return-void

    .line 1421
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 412
    :cond_1
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onBackPressed()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 279
    :goto_0
    :pswitch_0
    return-void

    .line 265
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->a(Z)V

    .line 266
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->f()V

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->n:Z

    goto :goto_0

    .line 270
    :pswitch_2
    const-string v0, ""

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->b:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->setTextByCode(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->b()V

    goto :goto_0

    .line 275
    :pswitch_3
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->f()V

    .line 276
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->finish()V

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0095
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f030057

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->setContentView(I)V

    .line 82
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 83
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 85
    const v0, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 86
    const v0, 0x7f0c0095

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->setCustomActionBar(Landroid/view/View;)V

    .line 89
    const v0, 0x7f0c0142

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->n:Z

    .line 92
    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)V

    .line 93
    const v0, 0x7f0c0149

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->h:Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;

    .line 94
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->h:Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->h:Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    const v0, 0x7f0c0096

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    .line 97
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/s;

    invoke-direct {v4, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/s;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;)V

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->setOnUserInputListener(Lcom/ushaqi/zhuishushenqi/widget/ax;)V

    .line 106
    const v0, 0x7f0c0098

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->e:Landroid/view/View;

    .line 107
    const v0, 0x7f0c0097

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->f:Landroid/view/View;

    .line 108
    const v0, 0x7f0c00dd

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->i:Landroid/view/View;

    .line 109
    const v0, 0x7f0c0140

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->j:Landroid/view/View;

    .line 110
    const v0, 0x7f0c013f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->l:Landroid/view/View;

    .line 111
    const v0, 0x7f0c045e

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 117
    const v0, 0x7f0c0141

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->g:Landroid/widget/ListView;

    .line 118
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;

    .line 119
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1128
    if-eqz p1, :cond_0

    .line 1129
    const-string v0, "saved_keyword"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->b:Ljava/lang/String;

    .line 1130
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->setTextByCode(Ljava/lang/String;)V

    .line 1137
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/t;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/t;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1144
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/u;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/u;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1160
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/v;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/v;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 124
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->b()V

    .line 125
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 73
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "saved_keyword"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method
