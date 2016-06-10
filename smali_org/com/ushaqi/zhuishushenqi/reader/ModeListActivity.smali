.class public Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_ID"

    .line 31
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_TITLE"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_MODE"

    invoke-virtual {v0, v1, p3}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->finish()V

    .line 64
    const v0, 0x7f04001c

    const v1, 0x7f04001d

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->overridePendingTransition(II)V

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v4, 0x5

    .line 36
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->setContentView(I)V

    .line 38
    const v0, 0x7f050171

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->c(I)V

    .line 39
    const v0, 0x7f020179

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->d(I)V

    .line 41
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BOOK_MODE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->a:I

    .line 42
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BOOK_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->b:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BOOK_TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->c:Ljava/lang/String;

    .line 45
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->a:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 46
    iput v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->a:I

    .line 49
    :cond_0
    const v0, 0x7f0c0118

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/ViewGroup;

    .line 1054
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;

    const v2, 0x7f0201ff

    const v3, 0x7f050159

    iget v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->a:I

    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->c:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;-><init>(Landroid/app/Activity;IIIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1055
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;

    const v2, 0x7f020203

    const v3, 0x7f05015a

    const/4 v4, 0x0

    iget v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->a:I

    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->c:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;-><init>(Landroid/app/Activity;IIIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1056
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;

    const v2, 0x7f020201

    const v3, 0x7f05015b

    const/4 v4, 0x4

    iget v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->a:I

    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->c:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;-><init>(Landroid/app/Activity;IIIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1057
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;

    const v2, 0x7f0201f9

    const v3, 0x7f050158

    const/4 v4, 0x1

    iget v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->a:I

    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->c:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;-><init>(Landroid/app/Activity;IIIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1058
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;

    const v2, 0x7f020202

    const v3, 0x7f05015c

    const/4 v4, 0x2

    iget v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->a:I

    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->c:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;-><init>(Landroid/app/Activity;IIIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 51
    return-void
.end method
