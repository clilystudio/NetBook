.class final Lcom/ushaqi/zhuishushenqi/ui/aB;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/aB;->a:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aB;->a:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;Z)Z

    .line 270
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aB;->a:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;)V

    .line 271
    return-void
.end method
