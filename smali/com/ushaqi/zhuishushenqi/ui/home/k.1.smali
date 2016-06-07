.class final Lcom/ushaqi/zhuishushenqi/ui/home/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/update/a;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/k;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 36
    packed-switch p1, :pswitch_data_0

    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/k;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;->finish()V

    .line 43
    :pswitch_0
    return-void

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
