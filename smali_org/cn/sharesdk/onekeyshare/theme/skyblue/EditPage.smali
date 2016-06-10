.class public Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;
.super Lcn/sharesdk/onekeyshare/EditPageFakeActivity;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MAX_TEXT_COUNT:I = 0x8c


# instance fields
.field private textCounterTextView:Landroid/widget/TextView;

.field private textEditText:Landroid/widget/EditText;

.field private titleEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->makeImageItemView(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->removeImage(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)V

    return-void
.end method

.method private initAtUserView()V
    .locals 9

    .prologue
    .line 98
    const-string v0, "atLayout"

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->findViewByResName(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 99
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->platforms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/sharesdk/framework/Platform;

    .line 100
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v5

    .line 101
    invoke-virtual {p0, v5}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->isShowAtUserLayout(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->activity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->activity:Landroid/app/Activity;

    const-string v6, "skyblue_editpage_at_layout"

    invoke-static {v3, v6}, Lcom/arcsoft/hpay100/a/a;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 103
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->activity:Landroid/app/Activity;

    const-string v3, "atDescTextView"

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/a/a;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 104
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->activity:Landroid/app/Activity;

    const-string v7, "atTextView"

    invoke-static {v3, v7}, Lcom/arcsoft/hpay100/a/a;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 106
    new-instance v7, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$1;

    invoke-direct {v7, p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$1;-><init>(Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;)V

    .line 113
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p0, v5}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->getAtUserButtonText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->activity:Landroid/app/Activity;

    const-string v7, "list_friends"

    invoke-static {v3, v7}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0, v5}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->getLogoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-virtual {v1, v3, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 125
    :cond_1
    return-void
.end method

.method private initBodyView()V
    .locals 3

    .prologue
    .line 78
    const-string v0, "closeImageView"

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->findViewByResName(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 79
    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->shareParamMap:Ljava/util/HashMap;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "titleEditText"

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->findViewByResName(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->titleEditText:Landroid/widget/EditText;

    .line 84
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->titleEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->shareParamMap:Ljava/util/HashMap;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    const-string v0, "textCounterTextView"

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->findViewByResName(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->textCounterTextView:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->textCounterTextView:Landroid/widget/TextView;

    const-string v1, "140"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const-string v0, "textEditText"

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->findViewByResName(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->textEditText:Landroid/widget/EditText;

    .line 91
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->textEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->textEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->shareParamMap:Ljava/util/HashMap;

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->initAtUserView()V

    .line 95
    return-void
.end method

.method private initImageListView()V
    .locals 2

    .prologue
    .line 128
    const-string v0, "hScrollView"

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->findViewByResName(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 129
    new-instance v1, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$2;

    invoke-direct {v1, p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$2;-><init>(Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;)V

    .line 143
    invoke-virtual {p0, v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->initImageList(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 147
    :cond_0
    return-void
.end method

.method private initTitleView()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "backImageView"

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->findViewByResName(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 69
    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const-string v0, "okImageView"

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->findViewByResName(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 73
    const-string v1, "ok"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-boolean v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->dialogMode:Z

    if-nez v0, :cond_0

    .line 56
    const-string v0, "mainRelLayout"

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->findViewByResName(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 57
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 58
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 59
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    :cond_0
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->initTitleView()V

    .line 63
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->initBodyView()V

    .line 64
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->initImageListView()V

    .line 65
    return-void
.end method

.method private makeImageItemView(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)Landroid/view/View;
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->activity:Landroid/app/Activity;

    const-string v2, "skyblue_editpage_inc_image_layout"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 152
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->activity:Landroid/app/Activity;

    const-string v2, "imageView"

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 153
    iget-object v2, p1, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    new-instance v2, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$3;

    invoke-direct {v2, p0, p1}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$3;-><init>(Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->activity:Landroid/app/Activity;

    const-string v2, "imageRemoveBtn"

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 164
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 165
    new-instance v2, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$4;

    invoke-direct {v2, p0, v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$4;-><init>(Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    return-object v1
.end method

.method private onShareButtonClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->shareParamMap:Ljava/util/HashMap;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->titleEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->shareParamMap:Ljava/util/HashMap;

    const-string v2, "title"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->textEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->shareParamMap:Ljava/util/HashMap;

    const-string v2, "text"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->setResultAndFinish()V

    .line 205
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->platforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform;

    .line 183
    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    goto :goto_1

    .line 185
    :cond_2
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->finish()V

    goto :goto_0

    .line 189
    :cond_3
    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->onShareButtonClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->shareParamMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->platforms:Ljava/util/List;

    if-nez v0, :cond_1

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->finish()V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->activity:Landroid/app/Activity;

    const-string v2, "skyblue_editpage"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->initView()V

    goto :goto_0
.end method

.method public onFinish()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->textCounterTextView:Landroid/widget/TextView;

    .line 231
    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->textEditText:Landroid/widget/EditText;

    .line 232
    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->titleEditText:Landroid/widget/EditText;

    .line 233
    invoke-super {p0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->onFinish()Z

    move-result v0

    return v0
.end method

.method public onResult(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->getJoinSelectedUser(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_0

    .line 225
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->textEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 227
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->textEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    rsub-int v0, v0, 0x8c

    .line 214
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->textCounterTextView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->textCounterTextView:Landroid/widget/TextView;

    if-lez v0, :cond_0

    const v0, -0x303031

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    return-void

    .line 215
    :cond_0
    const/high16 v0, -0x10000

    goto :goto_0
.end method
