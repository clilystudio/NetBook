.class final Lcom/ushaqi/zhuishushenqi/reader/txt/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/txt/T;

.field private synthetic b:Landroid/widget/ImageView;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/reader/txt/R;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/R;Lcom/ushaqi/zhuishushenqi/reader/txt/T;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/S;->c:Lcom/ushaqi/zhuishushenqi/reader/txt/R;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/S;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/T;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/S;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/S;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/T;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/T;->c()V

    .line 202
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/S;->c:Lcom/ushaqi/zhuishushenqi/reader/txt/R;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/S;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/S;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/T;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/txt/T;->b()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/txt/R;->a(Lcom/ushaqi/zhuishushenqi/reader/txt/R;Landroid/widget/ImageView;Z)V

    .line 203
    return-void
.end method
