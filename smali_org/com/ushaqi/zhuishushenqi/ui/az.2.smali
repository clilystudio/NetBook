.class final Lcom/ushaqi/zhuishushenqi/ui/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/ui/cd;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ay;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ay;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/az;->a:Lcom/ushaqi/zhuishushenqi/ui/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/az;->a:Lcom/ushaqi/zhuishushenqi/ui/ay;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ay;->a:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;I)V

    .line 116
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/az;->a:Lcom/ushaqi/zhuishushenqi/ui/ay;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ay;->a:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;II)V

    .line 117
    return-void
.end method
