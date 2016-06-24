.class abstract Lcom/ushaqi/zhuishushenqi/reader/Z;
.super Ljava/lang/Object;
.source "SourceFile"
# interfaces
.implements Ljava/lang/Runnable;
# instance fields
.field private a:I
.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/Reader;
# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/Reader;I)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/Z;->b = p1;
    p0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/reader/Z;->a = p2;
    return;
.end method
# virtual methods
.method public abstract a(Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;)V
.end method
.method public run()V
    .locals 6
    .prologue
    v1 = 0x1;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/Z;->b;
    v3 = v0.d();
    v0 = v3.length;
    if (v0 <= 0) {
//       if-lez v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/Z;->a;
    v2 = v3.length;
    if (v0 < v2) {
//       if-lt v0, v2, :cond_0
    }
    v0 = v3.length;
    v0 = v0 + -0x1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/Z;->a = v0;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/Z;->a;
    v4 = v3[v0];
    if (v4 != 0) {
//       if-nez v4, :cond_3
    }
    v0 = new ReaderChapter();
    v0.<init>();
    v2 = v0;
    v0 = v1;
    :goto_0
    if (v0 == 0) {
//       if-eqz v0, :cond_5
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/Z;->b;
    v0 = Lcom/ushaqi/zhuishushenqi/reader/Reader.o(v0);
    v1 = 0x5;
    if (v0 == v1) {
//       if-eq v0, v1, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/Z;->b;
    v0 = Lcom/ushaqi/zhuishushenqi/reader/Reader.o(v0);
    v1 = 0xa;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_4
    }
    :cond_1
    v0 = -0x2;
    v2.setStatus(v0);
    :cond_2
    :goto_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/Z;->b;
    v0 = v0.Lcom/ushaqi/zhuishushenqi/reader/Reader;->a;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/Z;->a;
    v1 = Ljava/lang/Integer.valueOf(v1);
    v0.put(v1, v2);
    p0.a(v2);
    return;
    :cond_3
    v0 = v4.getUnreadble();
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/Z;->b;
    v5 = p0.Lcom/ushaqi/zhuishushenqi/reader/Z;->a;
    v2 = Lcom/ushaqi/zhuishushenqi/reader/Reader.a(v2, v4, v5);
    goto :goto_0
    :cond_4
    v0 = -0x3;
    v2.setStatus(v0);
    goto :goto_1
    :cond_5
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/Z;->b;
    v0 = Lcom/ushaqi/zhuishushenqi/reader/Reader.f(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_7
    }
    :try_start_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/Z;->b;
    v0 = Lcom/ushaqi/zhuishushenqi/reader/Reader.g(v0);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/Z;->a;
    v0 = Lcom/arcsoft/hpay100/a/a.a(v0, v3, v1);
    v0 = v0.getChapter();
    v0 = v0.getBody();
    v2.setBody(v0);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    goto :goto_1
    :catch_0
    move-exception v0
    :cond_6
    v0 = -0x1;
    v2.setStatus(v0);
    goto :goto_1
    :cond_7
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/Z;->b;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/Z;->a;
    v0 = Lcom/ushaqi/zhuishushenqi/reader/Reader.b(v0, v4, v3);
    if (v0 == 0) {
//       if-eqz v0, :cond_6
    }
    v3 = v0.getChapter();
    if (v3 == 0) {
//       if-eqz v3, :cond_6
    }
    v3 = v0.getChapter();
    v4 = v3.getBody();
    if (v4 == 0) {
//       if-eqz v4, :cond_b
    }
    v0 = v3.getBody();
    v2.setBody(v0);
    v0 = v3.getContent();
    v2.setCpContent(v0);
    v0 = v3.getId();
    v2.setId(v0);
    v0 = v3.isVip();
    v2.setIsVip(v0);
    v0 = v3.getLink();
    if (v0 == 0) {
//       if-eqz v0, :cond_8
    }
    v0 = v3.getLink();
    v2.setLink(v0);
    :cond_8
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/Z;->b;
    v0 = Lcom/ushaqi/zhuishushenqi/reader/Reader.p(v0);
    v4 = v3.getId();
    v0 = v0.get(v4);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v4 = v0.isVip();
    if (v4 != 0) {
//       if-nez v4, :cond_9
    }
    v3 = v3.isVip();
    if (v3 == 0) {
//       if-eqz v3, :cond_a
    }
    :cond_9
    :goto_2
    v2.setIsVip(v1);
    v0 = v0.getCurrency();
    v2.setCurrency(v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/Z;->b;
    v0 = v0.e();
    v1 = v2.getId();
    v0 = v0.get(v1);
    check-cast v0, Ljava/lang/String;
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v2.setKey(v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/Z;->b;
    v0 = Lcom/ushaqi/zhuishushenqi/reader/Reader.q(v0);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/Z;->b;
    v1 = Lcom/ushaqi/zhuishushenqi/reader/Reader.h(v1);
    v3 = v2.getLink();
    v3 = Landroid/support/design/widget/am.e(v3);
    Lcom/arcsoft/hpay100/a/a.a(v0, v1, v3, v2);
    goto/16 :goto_1
    :cond_a
    v1 = 0x0;
    goto :goto_2
    :cond_b
    v0 = v0.getStatus();
    v2.setStatus(v0);
    goto/16 :goto_1
.end method
