.class final Lcom/ushaqi/zhuishushenqi/ui/post/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/cf;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/cf;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cg;->a:Lcom/ushaqi/zhuishushenqi/ui/post/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cg;->a:Lcom/ushaqi/zhuishushenqi/ui/post/cf;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/cf;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->o(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V

    .line 254
    return-void
.end method
