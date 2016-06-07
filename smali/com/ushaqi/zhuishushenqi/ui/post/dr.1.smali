.class final Lcom/ushaqi/zhuishushenqi/ui/post/dr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/dq;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/dq;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dr;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 42
    packed-switch p2, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dr;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dq;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/dq;->a(Lcom/ushaqi/zhuishushenqi/ui/post/dq;)V

    goto :goto_0

    .line 47
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dr;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dq;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/dq;->b(Lcom/ushaqi/zhuishushenqi/ui/post/dq;)V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
