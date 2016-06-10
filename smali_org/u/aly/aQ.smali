.class final Lu/aly/aQ;
.super Lu/aly/bV;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bV",
        "<",
        "Lu/aly/bd;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Lu/aly/bV;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Lu/aly/aQ;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 8

    .prologue
    const/16 v7, 0xf

    const/4 v1, 0x0

    const/16 v6, 0xa

    const/4 v5, 0x1

    .line 1
    check-cast p2, Lu/aly/bd;

    .line 1536
    invoke-virtual {p1}, Lu/aly/bN;->d()Lu/aly/bR;

    .line 1539
    :goto_0
    invoke-virtual {p1}, Lu/aly/bN;->f()Lu/aly/bK;

    move-result-object v0

    .line 1540
    iget-byte v2, v0, Lu/aly/bK;->b:B

    if-eqz v2, :cond_9

    .line 1543
    iget-short v2, v0, Lu/aly/bK;->c:S

    packed-switch v2, :pswitch_data_0

    .line 1624
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1545
    :pswitch_0
    iget-byte v2, v0, Lu/aly/bK;->b:B

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 1546
    invoke-virtual {p1}, Lu/aly/bN;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bd;->a:Ljava/lang/String;

    .line 1547
    invoke-virtual {p2, v5}, Lu/aly/bd;->a(Z)V

    goto :goto_0

    .line 1549
    :cond_0
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1553
    :pswitch_1
    iget-byte v2, v0, Lu/aly/bK;->b:B

    if-ne v2, v6, :cond_1

    .line 1554
    invoke-virtual {p1}, Lu/aly/bN;->n()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/bd;->b:J

    .line 1555
    invoke-virtual {p2, v5}, Lu/aly/bd;->b(Z)V

    goto :goto_0

    .line 1557
    :cond_1
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1561
    :pswitch_2
    iget-byte v2, v0, Lu/aly/bK;->b:B

    if-ne v2, v6, :cond_2

    .line 1562
    invoke-virtual {p1}, Lu/aly/bN;->n()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/bd;->c:J

    .line 1563
    invoke-virtual {p2, v5}, Lu/aly/bd;->c(Z)V

    goto :goto_0

    .line 1565
    :cond_2
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1569
    :pswitch_3
    iget-byte v2, v0, Lu/aly/bK;->b:B

    if-ne v2, v6, :cond_3

    .line 1570
    invoke-virtual {p1}, Lu/aly/bN;->n()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/bd;->d:J

    .line 1571
    invoke-virtual {p2, v5}, Lu/aly/bd;->d(Z)V

    goto :goto_0

    .line 1573
    :cond_3
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1577
    :pswitch_4
    iget-byte v2, v0, Lu/aly/bK;->b:B

    if-ne v2, v7, :cond_5

    .line 1579
    invoke-virtual {p1}, Lu/aly/bN;->h()Lu/aly/bL;

    move-result-object v2

    .line 1580
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/bL;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/bd;->e:Ljava/util/List;

    move v0, v1

    .line 1581
    :goto_1
    iget v3, v2, Lu/aly/bL;->b:I

    if-lt v0, v3, :cond_4

    .line 1590
    invoke-virtual {p2, v5}, Lu/aly/bd;->e(Z)V

    goto :goto_0

    .line 1584
    :cond_4
    new-instance v3, Lu/aly/ay;

    invoke-direct {v3}, Lu/aly/ay;-><init>()V

    .line 1585
    invoke-virtual {v3, p1}, Lu/aly/ay;->a(Lu/aly/bN;)V

    .line 1586
    iget-object v4, p2, Lu/aly/bd;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1581
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1592
    :cond_5
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto/16 :goto_0

    .line 1596
    :pswitch_5
    iget-byte v2, v0, Lu/aly/bK;->b:B

    if-ne v2, v7, :cond_7

    .line 1598
    invoke-virtual {p1}, Lu/aly/bN;->h()Lu/aly/bL;

    move-result-object v2

    .line 1599
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/bL;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/bd;->f:Ljava/util/List;

    move v0, v1

    .line 1600
    :goto_2
    iget v3, v2, Lu/aly/bL;->b:I

    if-lt v0, v3, :cond_6

    .line 1609
    invoke-virtual {p2, v5}, Lu/aly/bd;->f(Z)V

    goto/16 :goto_0

    .line 1603
    :cond_6
    new-instance v3, Lu/aly/aw;

    invoke-direct {v3}, Lu/aly/aw;-><init>()V

    .line 1604
    invoke-virtual {v3, p1}, Lu/aly/aw;->a(Lu/aly/bN;)V

    .line 1605
    iget-object v4, p2, Lu/aly/bd;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1600
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1611
    :cond_7
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto/16 :goto_0

    .line 1615
    :pswitch_6
    iget-byte v2, v0, Lu/aly/bK;->b:B

    const/16 v3, 0xc

    if-ne v2, v3, :cond_8

    .line 1616
    new-instance v0, Lu/aly/be;

    invoke-direct {v0}, Lu/aly/be;-><init>()V

    iput-object v0, p2, Lu/aly/bd;->g:Lu/aly/be;

    .line 1617
    iget-object v0, p2, Lu/aly/bd;->g:Lu/aly/be;

    invoke-virtual {v0, p1}, Lu/aly/be;->a(Lu/aly/bN;)V

    .line 1618
    invoke-virtual {p2, v5}, Lu/aly/bd;->g(Z)V

    goto/16 :goto_0

    .line 1620
    :cond_8
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto/16 :goto_0

    .line 1628
    :cond_9
    invoke-virtual {p1}, Lu/aly/bN;->e()V

    .line 1631
    invoke-virtual {p2}, Lu/aly/bd;->i()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1632
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'start_time\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1634
    :cond_a
    invoke-virtual {p2}, Lu/aly/bd;->l()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1635
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'end_time\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1637
    :cond_b
    invoke-virtual {p2}, Lu/aly/bd;->o()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1638
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'duration\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1640
    :cond_c
    invoke-virtual {p2}, Lu/aly/bd;->C()V

    .line 1
    return-void

    .line 1543
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 1
    check-cast p2, Lu/aly/bd;

    .line 1644
    invoke-virtual {p2}, Lu/aly/bd;->C()V

    .line 1646
    invoke-static {}, Lu/aly/bd;->D()Lu/aly/bR;

    invoke-virtual {p1}, Lu/aly/bN;->a()V

    .line 1647
    iget-object v0, p2, Lu/aly/bd;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1648
    invoke-static {}, Lu/aly/bd;->E()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1649
    iget-object v0, p2, Lu/aly/bd;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Ljava/lang/String;)V

    .line 1652
    :cond_0
    invoke-static {}, Lu/aly/bd;->F()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1653
    iget-wide v0, p2, Lu/aly/bd;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/bN;->a(J)V

    .line 1655
    invoke-static {}, Lu/aly/bd;->G()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1656
    iget-wide v0, p2, Lu/aly/bd;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/bN;->a(J)V

    .line 1658
    invoke-static {}, Lu/aly/bd;->H()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1659
    iget-wide v0, p2, Lu/aly/bd;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/bN;->a(J)V

    .line 1661
    iget-object v0, p2, Lu/aly/bd;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1662
    invoke-virtual {p2}, Lu/aly/bd;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1663
    invoke-static {}, Lu/aly/bd;->I()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1665
    new-instance v0, Lu/aly/bL;

    iget-object v1, p2, Lu/aly/bd;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lu/aly/bL;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bL;)V

    .line 1666
    iget-object v0, p2, Lu/aly/bd;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1675
    :cond_1
    iget-object v0, p2, Lu/aly/bd;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1676
    invoke-virtual {p2}, Lu/aly/bd;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1677
    invoke-static {}, Lu/aly/bd;->J()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1679
    new-instance v0, Lu/aly/bL;

    iget-object v1, p2, Lu/aly/bd;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lu/aly/bL;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bL;)V

    .line 1680
    iget-object v0, p2, Lu/aly/bd;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1689
    :cond_2
    iget-object v0, p2, Lu/aly/bd;->g:Lu/aly/be;

    if-eqz v0, :cond_3

    .line 1690
    invoke-virtual {p2}, Lu/aly/bd;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1691
    invoke-static {}, Lu/aly/bd;->K()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1692
    iget-object v0, p2, Lu/aly/bd;->g:Lu/aly/be;

    invoke-virtual {v0, p1}, Lu/aly/be;->b(Lu/aly/bN;)V

    .line 1696
    :cond_3
    invoke-virtual {p1}, Lu/aly/bN;->c()V

    .line 1697
    invoke-virtual {p1}, Lu/aly/bN;->b()V

    .line 1
    return-void

    .line 1666
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ay;

    .line 1668
    invoke-virtual {v0, p1}, Lu/aly/ay;->b(Lu/aly/bN;)V

    goto :goto_0

    .line 1680
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/aw;

    .line 1682
    invoke-virtual {v0, p1}, Lu/aly/aw;->b(Lu/aly/bN;)V

    goto :goto_1
.end method
