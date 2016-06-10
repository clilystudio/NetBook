.class final Lcom/ushaqi/zhuishushenqi/reader/bB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bB;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 90
    const-string v0, "mix"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bB;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bB;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->c(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bB;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/support/design/widget/am;->c(Ljava/lang/String;I)V

    .line 93
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/v;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/event/v;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bB;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    const-string v1, "MIX_TOC_ID"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;Ljava/lang/String;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bB;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->finish()V

    .line 97
    return-void
.end method
