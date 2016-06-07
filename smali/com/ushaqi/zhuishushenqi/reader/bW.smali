.class final Lcom/ushaqi/zhuishushenqi/reader/bW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bW;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bW;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bW;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bW;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->d(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bW;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void
.end method
