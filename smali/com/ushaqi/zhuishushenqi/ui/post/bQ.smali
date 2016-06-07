.class final Lcom/ushaqi/zhuishushenqi/ui/post/bQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/bP;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/bP;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bQ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bQ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bP;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/bP;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->i(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V

    .line 232
    return-void
.end method
