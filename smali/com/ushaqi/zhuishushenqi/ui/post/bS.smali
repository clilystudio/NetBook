.class final Lcom/ushaqi/zhuishushenqi/ui/post/bS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/bR;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/bR;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bS;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bS;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bR;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->m(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V

    .line 253
    return-void
.end method
