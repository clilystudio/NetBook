.class final Lcom/ushaqi/zhuishushenqi/adapter/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/adapter/R;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/model/User;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/adapter/G;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/adapter/R;Lcom/ushaqi/zhuishushenqi/model/User;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/adapter/M;->c:Lcom/ushaqi/zhuishushenqi/adapter/G;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/adapter/M;->a:Lcom/ushaqi/zhuishushenqi/adapter/R;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/adapter/M;->b:Lcom/ushaqi/zhuishushenqi/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/M;->c:Lcom/ushaqi/zhuishushenqi/adapter/G;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/M;->a:Lcom/ushaqi/zhuishushenqi/adapter/R;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/M;->b:Lcom/ushaqi/zhuishushenqi/model/User;

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/adapter/R;Lcom/ushaqi/zhuishushenqi/model/User;)V

    .line 459
    return-void
.end method
