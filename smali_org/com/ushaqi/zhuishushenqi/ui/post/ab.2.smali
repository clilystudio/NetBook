.class final Lcom/ushaqi/zhuishushenqi/ui/post/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/widget/av;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ab;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ab;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ab;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ad;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ab;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;)V

    .line 221
    :cond_1
    return-void
.end method
