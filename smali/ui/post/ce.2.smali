.class final Lcom/ushaqi/zhuishushenqi/ui/post/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/cd;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/cd;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ce;->a:Lcom/ushaqi/zhuishushenqi/ui/post/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ce;->a:Lcom/ushaqi/zhuishushenqi/ui/post/cd;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/cd;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V

    .line 233
    return-void
.end method
