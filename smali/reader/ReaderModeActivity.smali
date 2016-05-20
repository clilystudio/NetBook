.class public Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 31
    return-void
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;

    .line 57
    if-nez v0, :cond_0

    .line 58
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->a:I

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;->a(ILjava/lang/String;)Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;

    move-result-object v0

    .line 60
    :cond_0
    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->c:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->startActivity(Landroid/content/Intent;)V

    .line 80
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;->updateCount(Ljava/lang/String;I)V

    .line 81
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->c:Ljava/lang/String;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->a:I

    invoke-static {p0, v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    const v0, 0x7f04001a

    const v1, 0x7f04001b

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->overridePendingTransition(II)V

    .line 68
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 35
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const-string v0, "BOOK_ID"

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->b:Ljava/lang/String;

    .line 38
    const-string v0, "BOOK_TITLE"

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->c:Ljava/lang/String;

    .line 40
    if-eqz p1, :cond_0

    .line 41
    const-string v0, "savedCurrentMode"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->a:I

    .line 45
    :goto_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SELECT_LAST"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 47
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BOOK_MODE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->a:I

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 52
    const-string v0, "savedCurrentMode"

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    return-void
.end method
