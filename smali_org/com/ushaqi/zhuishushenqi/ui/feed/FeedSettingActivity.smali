.class public Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;->b:I

    return v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;I)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v1, 0x0

    .line 27
    .line 1090
    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->d(I)I

    move-result v2

    .line 1091
    new-array v3, v7, [I

    fill-array-data v3, :array_0

    .line 1094
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0300a6

    invoke-virtual {v0, v4, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 1096
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 1097
    const-string v5, "\u9009\u62e9\u517b\u80a5\u7ae0\u8282\u6570"

    .line 2036
    iput-object v5, v0, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 1098
    invoke-virtual {v0, v4}, Luk/me/lewisdeane/ldialogs/h;->a(Landroid/view/View;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v5, "\u53d6\u6d88"

    invoke-virtual {v0, v5, v6}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v5

    .line 1099
    const v0, 0x7f0c0230

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 1100
    aget v6, v3, v2

    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 1102
    :goto_0
    if-ge v1, v7, :cond_0

    .line 1104
    aget v0, v3, v1

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 1105
    new-instance v6, Lcom/ushaqi/zhuishushenqi/ui/feed/i;

    invoke-direct {v6, p0, v5, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/feed/i;-><init>(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;Landroid/app/AlertDialog;II)V

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1102
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1116
    :cond_0
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 27
    return-void

    .line 1091
    :array_0
    .array-data 4
        0x7f0c0231
        0x7f0c0232
        0x7f0c0233
        0x7f0c0234
        0x7f0c0235
    .end array-data
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;I)V
    .locals 5

    .prologue
    .line 27
    .line 2120
    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->e(I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;->b:I

    .line 2121
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f0500d7

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2122
    const-string v0, "feed_chapter_count"

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;->b:I

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2123
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/m;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/m;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 27
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/16 v1, 0x32

    .line 34
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;->setContentView(I)V

    .line 36
    const v0, 0x7f050110

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;->b(I)V

    .line 39
    if-eqz p1, :cond_0

    .line 40
    const-string v0, "savedCurrentCount"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;->b:I

    .line 1056
    :goto_0
    const v0, 0x7f0c0108

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1057
    const v0, 0x7f0c010a

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;->a:Landroid/widget/TextView;

    .line 1058
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;->a:Landroid/widget/TextView;

    const v2, 0x7f0500d7

    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1059
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/feed/h;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/feed/h;-><init>(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void

    .line 42
    :cond_0
    const-string v0, "feed_chapter_count"

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;->b:I

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 52
    const-string v0, "savedCurrentCount"

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedSettingActivity;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    return-void
.end method
