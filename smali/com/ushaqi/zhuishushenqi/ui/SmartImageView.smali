.class public Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;
.super Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;
.source "SourceFile"
# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .prologue
    p0.<init>(p1);
    return;
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .prologue
    p0.<init>(p1, p2);
    return;
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .prologue
    p0.<init>(p1, p2, p3);
    return;
.end method
# virtual methods
.method protected a()Lcom/nostra13/universalimageloader/core/b/a;
    .locals 1
    .prologue
    v0 = 0x0;
    return v0;
.end method
.method public setApiImageUrl(Ljava/lang/String;I)V
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/api/ApiService;->a;
    v0 = v0.append(v1);
    v0 = v0.append(p1);
    v0 = v0.toString();
    p0.setImageUrl(v0, p2);
    return;
.end method
.method public setImageUrl(Ljava/lang/String;)V
    .locals 1
    .prologue
    v0 = 0x0;
    p0.setImageUrl(p1, v0);
    return;
.end method
.method public setImageUrl(Ljava/lang/String;I)V
    .locals 1
    .prologue
    v0 = 0x0;
    p0.setImageUrl(p1, p2, v0);
    return;
.end method
.method public setImageUrl(Ljava/lang/String;ILcom/nostra13/universalimageloader/core/d/a;)V
    .locals 3
    .prologue
    v1 = 0x1;
    v0 = new e();
    v0.<init>();
    v0 = v0.a(v1);
    v0 = v0.b(v1);
    if (p2 == 0) {
//       if-eqz p2, :cond_0
    }
    v0.a(p2);
    :cond_0
    v1 = p0.a();
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    v0.a(v1);
    :cond_1
    v0 = v0.a();
    v1 = "Official";
    v2 = "macServer";
    v1 = v1.equals(v2);
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    if (p1 == 0) {
//       if-eqz p1, :cond_2
    }
    v1 = "static";
    v1 = p1.contains(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    :goto_0
    return;
    :cond_2
    v1 = invoke-static {}, Lcom/nostra13/universalimageloader/core/f;->a()Lcom/nostra13/universalimageloader/core/f;
    v1.a(p1, p0, v0, p3);
    goto :goto_0
.end method
