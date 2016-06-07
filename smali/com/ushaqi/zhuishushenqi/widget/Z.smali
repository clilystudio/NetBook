.class final Lcom/ushaqi/zhuishushenqi/widget/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/Z;->c:Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/widget/Z;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/widget/Z;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/Z;->c:Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/Z;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/Z;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    return-void
.end method
